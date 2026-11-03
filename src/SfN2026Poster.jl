module SfN2026Poster
using Hippocampus
using Hippocampus.CairoMakie
using Hippocampus.Makie
using Hippocampus.JLD2
using Pkg

function hippocampus_dir()
	pth = Pkg.pathof(Hippocampus)
	joinpath(splitpath(pth)[1:end-2])
end

function get_sessions()
    allcelldirs = open("/Volumes/Hippocampus/Data/picasso-misc/AnalysisHM/Current Analysis/cell_list.txt") do fid
        readlines(fid)
    end
    sessiondirs = unique(Hippocampus.DPHT.get_level_path.("session", allcelldirs))
end

function plot_theme()
	Theme(Axis=(xlabelsize=16, ylabelsize=16,
                           xticklabelsize=16, yticklabelsize=16,
                           topspinevisible=false, rightspinevisible=false,
                           xgridvisible=false, ygridvisible=false,ylabelvisible=true,
                           xticklabelsvisible=true, xlabelvisible=true,
                           titlesize=16),
                     Colorbar=(labelsize=16, ticklabelsize=16),
                     Scatter=(markersize=10,),
                     Lines=(linewidth=3,),
                     fontsize=16)
end

function figure1()
	hpdir = hippocampus_dir()
    udata = cd("/Volumes/Hippocampus/Data/picasso-misc/20181102/session01") do
        Hippocampus.UnityData()
    end
    poster_pos =  Dict(k=>v[[1,3]] for (k,v) in udata.header["PosterLocations"]) 
    sessions = get_sessions()
    with_theme(plot_theme()) do
        fig = Figure(size=(768,768))
        lg_top = GridLayout(fig[1,1:2])
        axg = Axis(lg_top[1,1],aspect=DataAspect())
        Label(lg_top[1,1,TopLeft()], "A")
        hidedecorations!(axg)
        hidespines!(axg)
        img = load(joinpath(hpdir,"artefacts","monkey_in_chair.png"))
        image!(axg, rotr90(img))
        # load chamber rendering
        img_chamber = load(joinpath(hpdir,"figures","picasso_chamber_rendering.png"))
        axc = Axis(lg_top[1,2], aspect=DataAspect())
        Label(lg_top[1,2,TopLeft()],"F")
        hidedecorations!(axc)
        hidespines!(axc)
        image!(axc, rotr90(img_chamber))
        lg1 = GridLayout(fig[2,1])
        lg11 = GridLayout(lg1[1,1], alignmode=Outside())
        rowsize!(lg11, 1, Aspect(1,1))
        Label(lg1[1,1,TopLeft()],"B")
        Hippocampus.plot_flat_maze_with_posters!(lg11;_poster_pos=poster_pos)
        lg112 = GridLayout(lg11[1,2])
        plot_performance!(lg112;arrangement=:vertical, use_boxplot=false, markersize=20)
        Label(lg11[1,2,TopLeft()],"C")
        colsize!(lg11, 2, Relative(0.35))
        lg12 = GridLayout(lg1[2,1])
        Label(lg1[2,1, TopLeft()], "D", padding=(20,20,0,0))
        trajectory_lengths = JLD2.load(joinpath(hpdir, "data","optimal_path_length.jld2"), "lengths")
        Hippocampus.plot_trajectory_lengths!(lg12, trajectory_lengths, markersize=20)
        # show trajectories for a sample session
        lg2 = GridLayout(fig[2,2])
        Label(lg2[1,1,TopLeft()], "E")
        Hippocampus.plot_trajectories!(lg2, udata) 
        colsize!(fig.layout,1, Relative(0.35))

        fig
    end
end

end # module SfN2026Poster

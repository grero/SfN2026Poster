#set document(title: "Place and view responses are multiplexed in the primate hippocampus during virtual navigation",
             author: ("Roger Herikstad"))

#set page(height: 100cm,
          width: 160cm, margin: (top: 1cm, bottom: 5cm, left: 1cm, right: 1cm))

#set text(24pt)
#set par(justify: true)


// This defines the properties of each box
#let contentbox(myheading, body, malign:top+left, mdy:20cm, mdx: 0cm, mheight: 50%, mwidth: 30%) = {
place(malign, dy: mdy, dx: mdx,
        rect(width: mwidth, height:mheight, radius: 40pt,inset: 0pt, stroke: 1pt,
        stack(dir:ttb,
        align(top+center,
            rect(width: 100%, height:3.0cm, radius: 20pt, fill: rgb(28%,66%,100%), stroke: black, 
                 align(horizon+center,
                     text(size: 42pt, weight: "bold", heading(level:1,myheading)))
                 )
            )
          ,
          block(inset: 1cm,text(size: 24pt)[#body])
        )
      )
  )  
}

#place(center+top,
  align(top+center,
     rect(width: 99.9%, height:auto, fill: rgb(28%,66%,100%),radius: 40pt,inset: 70pt,
        align(center+horizon, 
          stack(dir:ttb,spacing: none,
            align(center,
             rect(width: 85%, height:auto, stroke:0pt, 
              text(size:96pt, fill: rgb(0, 0, 0))[#title()]
              )
            ),
            v(2cm),
           align(center,
             text(size:48pt, fill: black)[Roger Herikstad#super[1], Tabitha Ng#super[1], Cullen Owens#super[1], Hui Min Tan#super[1], Camilo Libedinsky#super[1,2], Shih-Cheng Yen#super[1,3] 
             ]
           ),
           v(1.0cm),
           align(center, 
            text(size:24pt)[
              #super[1] N.1 Institute for Health, National University of Singapore,
              #super[2] Department of Psychology, National University of Singapore,
              #super[3] College of Design and Engineering, National University of Singapore
            ]
         )
      )
  )
)
)
)

// This shows the poster number
#place(top+left,dx: 3cm, dy: 2cm,
        rect(width: 10cm, height:auto, stroke: 0pt)[
          #text(size:64pt)[PSTR248.21]
]
)

// NUS N.1 Logo
#place(top+right, dx: -1cm, dy: 2cm,
  rect(width: 13cm, height: auto, stroke: 0pt,
    image("figures/N.1 Logo.jpg")
  )
)


//#box(width: 0.3fr, height: auto, )

#contentbox("Introduction", malign:top+left, mdy: 22cm,mheight:auto, mwidth: 35cm)[
  #text(size:24pt)[
   The responses of primate hippocampal cells have been found to exhibit mixed selectivity to both space and view, supporting an increased role of vision in navigation compared to rodents. In this study, we record from such cells as a non-human primate subject navigates a virtual maze. Using a detailed, mesh based method to quantify how these cells respond to both spatial location and gaze position, we find a substantial portion with  mixed place and view responses, highlighting the complex role that the primate hippocampus plays during navigation.
  ]
]

#contentbox("Behavior", malign: top+left, mdy: 34cm, mheight:auto, mwidth:35cm)[
  #figure(image("figures/figure1_new.png"))
  #table(columns: (auto, auto), stroke: 0pt,
          image("figures/view_occupancy.png"),
          text(size:24pt)[A) An NHP subject seated in a primate chair navigating a virtual maze using a joystick. B) 3D rendering of the recording chamber and electrodes. We recorded from a total of 364 well-isolated neurons from the hippocampus. C) Top-down view of the maze showing the location of the 6 goal posters. D) Performance per start and goal poster pair. E) Trajectory length relative to optimal. F) Sample trajectories for one session. G) Distribution of gaze points on each of the surfaces of the maze.
        ]
    )
    #v(3cm)
]

//a bit hackish: just place a panel label here
#place(bottom+left, dx:2cm, dy: -10cm)[G]

#contentbox("Spatial responses", malign: top+left, mdx: 36cm, mdy: 22cm, mheight:auto, mwidth:28cm)[
  #figure(image("figures/figure2_new.png"))
  A-D) Examples of spatially selective cells, with identified clusters (dots) and clusters that exceed the clustering threshold (filled vertical lines and black outline). E-H) Statistics on number of fields (E), field size (F), and peak firing rate (G) for place cells (gray) and non-place cells (black). Place cells had higher firing rate than non-place cells (Mann-Whitney, $p=0.009$) (H) Number of overlapping place fields in each of the spatial bins in the maze.
]

#contentbox("View responses", malign: top+left, mdx: 65cm, mdy: 22cm, mheight:auto, mwidth:32cm)[
  #figure(image("figures/figure3_new.png"))
  A-D) Examples of view selective cells. Each panel in A and C shows mean activity projected onto the unfolded pillars (left) and floor and walls (right). E-H) Statistics on number of fields (E), field size (F), and peak activity (G) for view cells  (gray) and non-view cells (black). View cells had higher firing rate than non-view cells (Mann-Whitney, $p=0.0002$) H) Number of overlapping view fields in each of the view bins in the maze.
  #v(1.1cm) 
]

#contentbox("Joint (Multiplexed) responses", malign: top+left, mdx: 36cm, mdy: 77cm, mheight:auto, mwidth:61cm)[
  #table(columns: (50%, 50%), stroke: 0pt,
         [
           #image("figures/figure_joint_fields.png")
          The number of overlapping place fields (left) and view fields (right) in each bin for cells with both place and view fields.
        ],
        table(columns: (auto, auto),stroke: 0pt,
        image("figures/joint_vs_ind_sic.png"),
        [
          #align(horizon)[
          Comparison of the SIC for joint place and view responses vs the sum of SIC for place and view responses separately for cells with both place and view selectivity. Red(undant) cells are cells where the sum was larger than the joint, and syn(ergistic) are cells where the joint was larger than the sum. ]
        ]
      )
      )
      #v(0.8cm)
]

#contentbox("Field Conjunctions", malign: top+left, mdx: 98cm, mdy: 22cm, mheight:auto, mwidth:33cm)[
  #image("figures/figure4_new.png")
  Example conjunctive unit. A) Original view fields (left) and place fields (right). B) View response conditioned on the pink place field. C) Mean activity within the original view field when the subject was in the place field (pink asterisk) vs when he was in other non-place field bins (gray distribution). A cell was conjunctive if this difference was significant ($p<0.001$). D-E) Same as C, but for place conditioned on view. F) The three cells with larger than 7.5 units distance between place (stick) and view (patches) fields.
  #table(columns: (1.3fr, 0.7fr),stroke:0pt,
  image("figures/figure_conjunctive_fields.png"),
  [Summary of all significant conjunctions. Each red patch represents a view field and each blue patch represents a place field, while black connecting lines indicate specific conjunctions. The two panels show the same data from different angles. ]
  )
]

#contentbox("Place field directionality", malign: top+left, mdx: 98cm, mdy: 65cm, mheight:auto, mwidth:33cm)[
  //fig = PaperFigures.plot_directional_place_fields(;colormap=:jet, _plot_theme=SfN2026.plot_theme,figsize=(950,800))
  #align(center,
    image("figures/directional_place_fields_figure.png")
  )
  Place cells with directional place fields may account for some of the conjunctions. A-D) Two (A and C) directional place fields for one place cell. B and D) The difference in mean activity within each place field for forward and reverse trials is shown in the colored dot (green in B and cyan in D). Distributions were obtained by a permutation test. E) Summary of location and direction of each directed place field. F) Number of place cells with directed place fields (purple). G) Comparison of distance from place field to the nearest poster. 
]



#contentbox("Poster selectivity", malign: top+left, mdx: 132cm, mdy: 22cm, mheight:auto, mwidth:25cm)[
  //fig = PaperFigures.plot_landmark_cells(;_plot_theme=SfN2026.plot_theme)
  #image("figures/poster_selectivity_figure.png")
  Selectivity of cells with view fields to the different posters. A-B) An example of a view cell with view fields overlapping (B) with 3 (camel, crocodile, pig) of the 4 posters with high responses during the cue period (purple boxes in A). White rectangles represent poster locations. C) Summary across all view cells. "Object" cells had at least one overlapping view field with a selective poster from the cue period, while "poster view" cells were cells with at least one view field overlapping with a poster.
]


#contentbox("Summary", malign: top+left, mdx: 132cm, mdy: 52cm, mheight:auto, mwidth:25cm)[
  #image("figures/summary_figure_new.png")
  The different classes of hippocampal cells and their relationship to each other.
]

#contentbox("Conclusions", malign: top+left, mdx: 132cm, mdy: 73cm, mheight:auto, mwidth:25cm)[
 - 48.6% of recorded hippocampal cells were spatially selective
 - 52.7% were selective to view
 - 68.4% of spatially selective cells had at least one place field
 - 60.9% of view selective cells had at least one view field
 - 43.4% of recorded cells were selective to both place and view
  - 39.9% of these had identified conjunctive responses to place and view
  - the majority of conjunctive cells had view fields near the poster locations.

 Our results add to the growing body of evidence suggesting that primate hippocampal cells encode complex relationships between spatial location within environments and the visual inputs associated with those environments, and emphasize the increased role that vision serves in primate compared to rodent navigation.

]

#place(top+left, dx: 132cm, dy: 94cm)[
  #rect(width: 25cm, height:2.6cm, stroke:0pt,
    text(size:24pt)[Funded by the Ministry of Education Tier 3 Research Fund (MOE2017-T3-1-002) and the National Medical Research Council (MOH-000962).]
  )
]





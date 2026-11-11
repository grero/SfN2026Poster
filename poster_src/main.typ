#set document(title: "Mixed selectivity to place and view in the primate hippocampus",
             author: ("Roger Herikstad"))

#set page(height: 100cm,
          width: 160cm, margin: (top: 2cm, bottom: 5cm, left: 1cm, right: 1cm))

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
    box(width:100%, height: auto,
     rect(fill: rgb(28%,66%,100%),radius: 40pt,inset: 70pt)[
     
        #text(size:96pt, fill: rgb(0, 0, 0))[#title()],
        #text(size:48pt, fill: black)[Roger Herikstad#super[1], Tabitha Ng#super[1], Cullen Owens#super[1], Hui Min Tan#super[1], Camilo Libedinsky#super[1,2], Shih-Cheng Yen#super[1,3] 
      ]
      #place(top+center, dy: 17.5cm, 
      text(size:24pt)[
        #super[1] N.1 Institute for Health, National University of Singapore,
        #super[2] Department of Psychology, National University of Singapore,
        #super[3] College of Design and Engineering, National University of Singapore
      ]
      )
      ]
)
)
)
)

#box(width: 0.3fr, height: auto, )

#contentbox("Introduction", malign:top+left, mdy: 23cm,mheight:auto, mwidth: 35cm)[
  #text(size:24pt)[
   The responses of primate Hippocampal cells have been found to exhibit mixed selectivity to both space and view, supporting an increased role of vision in navigation compared to rodents. In this study, we record from such cells as a non-human primate subject navigates a virtual maze. Using a detailed, mesh based method to quantify how these cells respond to both spatial location and gaze position, we find a substantial portion with  mixed place and view responses, highlighting the complex role that the primate Hippocampus plays during navigation.
  ]
]

#contentbox("Behavior", malign: top+left, mdy: 35cm, mheight:auto, mwidth:35cm)[
  #figure(image("figures/figure1.png"))
  #table(columns: (auto, auto), stroke: 0pt,
          image("figures/view_occupancy.png"),
          text(size:24pt)[Top: A) An NHP subject seated in a primate chair navigating a virtual maze using a joystick. B) Top-down view of the maze showing the location of the 6 goal posters. C) Performance per poster. D) Trajectory length relative to optimal. E) Sample trajectories for one session. F) 3D rendering of the recording chamber and electrodes.
          Left: Distribution of gaze points on each of the surfaces of the maze.]
    )
]

#contentbox("Spatial responses", malign: top+left, mdx: 36cm, mdy: 23cm, mheight:auto, mwidth:27cm)[
  #figure(image("figures/figure2_new.png"))
  Examples of spatially selective cells, with identified clusters (dots) and cluster that exceed a clustering threshold (white outline). C-E) Statistics on number or fields (C), field size (D) and peak firing rate (E). F) Distribution of fields across all cells with at least one place field.
]

#contentbox("View responses", malign: top+left, mdx: 64cm, mdy: 23cm, mheight:auto, mwidth:32cm)[
  #figure(image("figures/figure3_new.png"))
  Examples of view selective cells. Each panel is A) shows mean activity projected onto the unfolded pillars (left) and floor and walls (right). C-E) Statistics on number of fields (C), field size (D) and peak activity (E). F) Distribution of view fields for each view bin.
  \
  \ 
]

#contentbox("Joint responses", malign: top+left, mdx: 36cm, mdy: 76cm, mheight:auto, mwidth:60cm)[
  #table(columns: (50%, 50%), stroke: 0pt,
         [
           #image("figures/figure_joint_fields.png")
          The number of place fields (left) and view fields (right) per bin for cells with both place and view fields.
        ],
        table(columns: (auto, auto),stroke: 0pt,
        image("figures/joint_vs_ind_sic.png"),
        [
          #align(horizon)[
          Comparison of the SIC for joint place and view responses vs the sum of SIC for place and view responses separately for cells with either place or view selectivity. Red(undant) cells are cells where the sum was larger than the joint, and syn(ergistic) were cells where the joint was larger. ]
        ]
      )
      )
]

#contentbox("Field Conjunctions", malign: top+left, mdx: 99cm, mdy: 23cm, mheight:auto, mwidth:32cm)[
  #image("figures/figure4_new.png")
  Example conjunctive unit. A) Original view fields (left) and place fields (right). B) View response conditioned on the red place field. C) Mean activity within the original view field when the subject was in the place field (purple asterisk) vs when he was in other non-place field bins (gray distribution), and mean activity within the view field conditioned on the place field (purple diamond) vs mean activity outside the view field (blue distribution). D-E) Same as C, but for place conditioned on view. F) Three example cells with larger distance between place (stick) and view (patches) fields.
  #table(columns: (1.0fr, 1.0fr),stroke:0pt,
  image("figures/figure_conjunctive_fields.png"),
  [Summary of all significant conjunctions. Each red patch represents a view field and each blue patch represents a place field, while black connecting lines indicate specific conjunctions. The two panels show the same data from different angles. ]
  )
]

#contentbox("Poster selectivity", malign: top+left, mdx: 99cm, mdy: 66cm, mheight:auto, mwidth:32cm)[
  #image("figures/poster_selectivity_figure.png")
  Selectivity of cells with view fields to the different posters. A-B) An example of a view cell with view fields overlapping (B) with 3 (camel, crocodile, pig) of the 4 posters with high responses during the cue period (A). C) Summary across all view cells. "Landmark" had at least one overlapping view field with the a selective poster from the queue period, while "poster view" were cells with at least one view field overlapping with a poster.
]

#place(top+left, dx: 99cm, dy: 92cm)[
  #rect(width: 32cm, height:2.6cm, stroke:0pt,
    text(size:24pt)[Funded by the Ministry of Education Tier 3 Research Fund (MOE2017-T3-1-002) and the National Medical Research Council (MOH-000962).]
  )
]


#contentbox("Place field orientation", malign: top+left, mdx: 132cm, mdy: 23cm, mheight:auto, mwidth:25cm)[
  #image("figures/directional_place_fields_figure.png")
  Place cells with directional place fields. A-D) Two (A and C) directional place field for one place cell. B and D) The difference in mean activity within each place field for forward and reverse trials. Distributions were obtained by a permutation test. E) Summary of location and direction of each directed place field. F) Number of place cells with directed place fields (purple). G) Comparison of distance from place field to nearest poster. 
]


#contentbox("Summary", malign: top+left, mdx: 132cm, mdy: 57cm, mheight:auto, mwidth:25cm)[
  #image("figures/summary_figure_new.png")
  The different classes of hippocampal cells and their relationship to each other.
]

#contentbox("Conclusions", malign: top+left, mdx: 132cm, mdy: 78cm, mheight:auto, mwidth:25cm)[
 -  
]





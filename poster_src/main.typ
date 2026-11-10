#set document(title: "Mixed selectivity to place and view in the primate hippocampus",
             author: ("Roger Herikstad"))

#set page(height: 100cm,
          width: 160cm, margin: (top: 3cm, bottom: 5cm, left: 1cm, right: 1cm))

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
        #text(size:48pt, fill: black)[Roger Herikstad, Tabitha Ng, Cullen Owens, Hui Min Tan, Camilo Libedinsky, Shih-Cheng Yen]
      ]
)
)
)
)

#box(width: 0.3fr, height: auto, )

#contentbox("Introduction", malign:top+left, mdy: 23cm,mheight:auto, mwidth: 27cm)[
  #text(size:24pt)[
   The responses of primate Hippocampal cells have been found to exhibit mixed selectivity to both space and view, supporting an increased role of vision in navigation compared to rodents. In this study, we record from such cells as a non-human primate subject navigates a virtual maze. Using a detailed, mesh based method to quantify how these cells respond to both spatial location and gaze position, we find a substantial portion with  mixed place and view responses, highlighting the complex role that the primate Hippocampus plays during navigation.
  ]
]

#contentbox("Behavior", malign: top+left, mdy: 40cm, mheight:auto, mwidth:35cm)[
  #figure(image("figures/figure1.png"))
  #table(columns: (auto, auto), stroke: 0pt,
          image("figures/view_occupancy.png"),
          text(size:24pt)[Top: A) An NHP subject seated in a primate chair navigating a virtual maze using a joystick. B) Top-down view of the maze showing the location of the 6 goal posters. C) Performance per poster. D) Trajectory length relative to optimal. E) Sample trajectories for one session. F) 3D rendering of the recording chamber and electrodes.
          Left: Distribution of gaze points on each of the surfaces of the maze.]
    )
]

#contentbox("Spatial responses", malign: top+left, mdx: 36cm, mdy: 23cm, mheight:auto, mwidth:25cm)[
  #figure(image("figures/figure2.png"))
]

#contentbox("View responses", malign: top+left, mdx: 62cm, mdy: 23cm, mheight:auto, mwidth:25cm)[
  #figure(image("figures/figure3.png"))
]

#contentbox("Joint responses", malign: top+left, mdx: 36cm, mdy: 69cm, mheight:auto, mwidth:51cm)[
  #table(columns: (50%, 50%), stroke: 0pt,
         [
           #image("figures/figure_joint_fields.png")
          The number of place fields (left) and view fields (right) per bin for cells with both place and view fields.
        ],
        []
      )
]

#contentbox("Field Conjunctions", malign: top+left, mdx: 88cm, mdy: 23cm, mheight:auto, mwidth:30cm)[
  #figure(image("figures/figure4.png"))
  Example conjunctive unit. A) Original view fields (left) and place fields (right). B) View response conditioned on the red place field. C) Mean activity within the original view field when the subject was in the place field (red asterisk) vs when he was in other non-place field bins (gray distribution), and mean activity within the view field conditioned on the place field (red diamond) vs mean activity outside the view field (blue distribution). D-E) Same as C, but for place conditioned on view. F) Three example cells with larger distance between place (stick) and view (patches) fields.
  #figure(image("figures/figure_conjunctive_fields.png"))
  Summary of all significant conjunctions. Each red patch represents a view field and each blue patch represents a place field, while black connecting lines indicate specific conjunctions. The two panels show the same data from different angles. 
]
#contentbox("Summary", malign: top+left, mdx: 120cm, mdy: 23cm, mheight:auto, mwidth:25cm)[
  #image("figures/summary_figure_new.png")
  The different classes of hippocampal cells and their relationship to each other.
]

#contentbox("Model", malign: top+left, mdx: 120cm, mdy: 46cm, mheight:auto, mwidth:25cm)[
]




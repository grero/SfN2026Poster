#set document(title: "Mixed selectivity to place and view in the primate hippocampus",
             author: ("Roger Herikstad"))

#set page(height: 100cm,
          width: 160cm, margin: (top: 5cm, bottom: 5cm, left: 2cm, right: 2cm))

#set par(justify: true)


// This defines the properties of each box
#let contentbox(myheading, body, malign:top+left, mdy:20cm, mdx: 0cm, mheight: 50%, mwidth: 30%) = {
place(malign, dy: mdy, dx: mdx,
        rect(width: mwidth, height:mheight, radius: 40pt,inset: 0pt, stroke: 1pt,
        stack(dir:ttb,
        align(top+center,
            rect(width: 100%, height:3.0cm, radius: 20pt, fill: rgb(28%,46%,100%), stroke: black, 
                 align(horizon+center,
                     text(size: 42pt, weight: "bold", heading(level:1,myheading)))
                 )
            )
          ,
          block(inset: 1cm,text(size: 36pt)[#body])
        )
      )
  )  
}

#place(center+top,
  align(top+center,
    box(width:100%, height: auto,
     rect(fill: rgb(28%,46%,100%),radius: 40pt,inset: 70pt)[
     
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

#contentbox("Behavior", malign: top+left, mdy: 40cm, mheight:auto, mwidth:30cm)[
  #figure(image("figures/figure1.png"))
  #table(columns: (auto, auto), stroke: 0pt,
          image("figures/view_occupancy.png"),
          text(size:24pt)[Top: A) An NHP subject seated in a primate chair navigating a virtual maze using a joystick. B) Top-down view of the maze showing the location of the 6 goal posters. C) Performance per poster. D) Trajectory length relative to optimal. E) Sample trajectories for one session. F) 3D rendering of the recording chamber and electrodes.
          Left: Distribution of gaze points on each of the surfaces of the maze.]
    )
]

#contentbox("Spatial responses", malign: top+left, mdx: 32cm, mdy: 23cm, mheight:auto, mwidth:25cm)[
  #figure(image("figures/figure2.png"))
]

#contentbox("View responses", malign: top+left, mdx: 58cm, mdy: 23cm, mheight:auto, mwidth:25cm)[
  #figure(image("figures/figure3.png"))
]

#contentbox("Conjunctive", malign: top+left, mdx: 84cm, mdy: 23cm, mheight:auto, mwidth:25cm)[
  #figure(image("figures/figure4.png"))
]

#contentbox("Model", malign: top+left, mdx: 110cm, mdy: 23cm, mheight:auto, mwidth:25cm)[
  #figure(image("figures/figure2.png"))
]




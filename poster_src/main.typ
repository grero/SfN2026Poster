#set document(title: "Mixed selectivity to place and view in the primate hippocampus",
             author: ("Roger Herikstad"))

#set page(height: 100cm,
          width: 160cm, margin: (top: 5cm, bottom: 5cm, left: 2cm, right: 2cm))

#set par(justify: true)


// This defines the properties of each box
#let contentbox(heading, body, malign:top+left, mdy:20cm, mdx: 0cm, mheight: 50%, mwidth: 30%) = {
place(malign, dy: mdy, dx: mdx,
        rect(width: mwidth, height:mheight, radius: 40pt,inset: 0pt, stroke: 1pt,
        stack(dir:ttb,
        align(top+center,
            rect(width: 100%, height:3.0cm, radius: 20pt, fill: rgb(50%,50%,50%), stroke: black, 
                 align(horizon+center,
                     text(size: 42pt, weight: "bold", heading))
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
     rect(fill: rgb(50,50,50),radius: 40pt,inset: 70pt)[
     
        #text(size:96pt, fill: rgb(100, 100, 100))[#title()],
        #text(size:48pt, fill: white)[Roger Herikstad, Tabitha Ng, Cullen Owens, Hui Min Tan, Camilo Libedinsky, Shih-Cheng Yen]
      ]
)
)
)
)

#box(width: 0.3fr, height: auto, )

#contentbox("1. Introduction", malign:top+left, mdy: 23cm,mheight:auto, mwidth: 27cm)[
  #text(size:24pt)[
   The responses of primate Hippocampal cells have been found to exhibit mixed selectivity to both space and view, supporting an increased role of vision in navigation compared to rodents. In this study, we record from such cells as a non-human primate subject navigates a virtual maze. Using a detailed, mesh based method to quantify how these cells respond to both spatial location and gaze position, we find a substantial portion with  mixed place and view responses, highlighting the complex role that the primate Hippocampus plays during navigation.
  ]
]

#contentbox("2. Behavior", malign: top+left, mdy: 43cm, mheight:auto, mwidth:30cm)[
  #figure(image("figures/figure1.png"))
]
// === Farben definieren ===
  #let light_bm_green = rgb("#bce2cc")
  #let bm_green = rgb("#00923f")
  #let dark = rgb("#495057")
  #let code_bg = rgb("#e9ecef")
  
  #set text(font: "Arial")
  
  
  
  // === Seitenlayout konfigurieren ===
    #set page(
    paper: "a4",
  margin: (
    top: 1.5cm,
    bottom: 1.5cm,
    left: 1.5cm,
    right: 2.5cm
  ),
  background: {
    // Rechte Farbleiste
    place(
      right,
      rect(
        width: 2cm,
        height: 100%,
        fill: light_bm_green
      )
    )
    // Logo mittig auf dem grünen Streifen mit Abstand von oben
    place(
      top + right,
      dx: -0.25cm, // Abstand von rechts
      dy: 0.25cm, // Abstand von oben
      align(center)[
        #image(
        "BioMath_logo_name_1500x411.png",
        width: 1.5cm
        )
    ]
      )
// Seitenzahl auf dem grünen Balken unten
place(
  bottom + right,
  dx: -0.25cm, // Abstand von rechts
  dy: -0.5cm, // Abstand von unten
  align(center)[
    #text(fill: bm_green, size: 10pt)[
    #context {
    let current = counter(page).get().first()
    let total = counter(page).final().first()
    [#current / #total]
      }
  ]
    ]
)
  }
)

// === Template als Funktion ===
  #let article(
  title: "",
subtitle: "",
author: "",
body
) = {
  set document(
    title: title,
    author: author
  )
  
  // Dokumentkörper
  body
}
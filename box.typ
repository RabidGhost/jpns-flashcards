#let buffer = 2mm
#let flap = 15mm
#let tab = 30mm


#let card_depth = 0.5mm

#let gluing_text = "Glue here"

#let fold_lines = stroke(paint: silver, dash: "dashed", thickness: 0.2pt)

#let box(card-size: auto, cards_count: int, label: text("Hiragana", font: "IBM Plex Sans", size: 26pt)) = {
  layout(lay => {
    let width = card-size.width + buffer
    let height = card-size.height + buffer
    let depth = cards_count * card_depth


    grid(
      stroke: (paint: gray, thickness: 0.2pt),
      columns: (tab, depth, height, depth, flap),
      //5
      rows: (tab, depth, width, depth, width),
      grid.cell(" ", x: 0, y: 0, stroke: none),
      grid.cell(" ", x: 0, y: 1, stroke: none),
      grid.cell(gluing_text, x: 0, y: 2, align: center, inset: (width / 2)),

      grid.cell(" ", x: 0, y: 3, stroke: none),
      grid.cell(" ", x: 0, y: 4, stroke: none),

      grid.cell(" ", x: 1, y: 0, stroke: none),
      grid.cell(gluing_text, x: 1, y: 1, align: center, inset: 10pt),
      grid.cell(" ", x: 1, y: 2, stroke: fold_lines),
      grid.cell(gluing_text, x: 1, y: 3, align: center, inset: 10pt),
      grid.cell(" ", x: 1, y: 4, stroke: none),

      grid.cell(gluing_text, x: 2, y: 0, align: center, inset: (tab / 2)),
      grid.cell(" ", x: 2, y: 1, stroke: (y: fold_lines)),
      grid.cell(" ", x: 2, y: 2, stroke: (right: fold_lines)),
      grid.cell(" ", x: 2, y: 3, stroke: (y: fold_lines)),
      grid.cell(rotate(90deg, reflow: true, label), align: horizon, x: 2, y: 4),

      grid.cell(" ", x: 3, y: 0, stroke: none),
      grid.cell(" ", x: 3, y: 1, stroke: none),
      grid.cell(rotate(-90deg, reflow: true, label), align: horizon, x: 3, y: 2, stroke: (right: fold_lines)),
      grid.cell(" ", x: 3, y: 3, stroke: none),
      grid.cell(" ", x: 3, y: 4, stroke: none),

      grid.cell(" ", x: 4, y: 0, stroke: none),
      grid.cell(" ", x: 4, y: 1, stroke: none),

      grid.cell(" ", x: 4, y: 3, stroke: none),
      grid.cell(" ", x: 4, y: 4, stroke: none),
    )
  })


  // width = y / rows
}

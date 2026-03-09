#let buffer = 2mm
#let flap = 15mm
#let tab = 30mm


#let card_depth = 0.5mm

#let box(card-size: none, rows: none, columns: none, cards_count: int) = {
  layout(lay => {
    let width = none
    let height = none
    let depth = cards_count * card_depth
    if card-size != none {
      width = card-size.width + buffer
      height = card-size.height + buffer
    } else {
      // TODO: no rows/cols?
      width = (lay.width / columns) + buffer
      height = (lay.height / rows) + buffer
    }


    grid(
      stroke: (black),
      columns: (tab, depth, height, depth, flap),
      //5
      rows: (tab, depth, width, depth, width),
      grid.cell(" ", x: 0, y: 0, stroke: none),
      grid.cell(" ", x: 0, y: 1, stroke: none),
      grid.cell(" ", x: 1, y: 0, stroke: none),
      grid.cell(" ", x: 3, y: 0, stroke: none),
      grid.cell(" ", x: 4, y: 0, stroke: none),
      grid.cell(" ", x: 3, y: 1, stroke: none),
      grid.cell(" ", x: 4, y: 1, stroke: none),
      grid.cell(" ", x: 3, y: 3, stroke: none),
      grid.cell(" ", x: 4, y: 3, stroke: none),
      grid.cell(" ", x: 3, y: 4, stroke: none),
      grid.cell(" ", x: 0, y: 3, stroke: none),
      grid.cell(" ", x: 0, y: 4, stroke: none),
      grid.cell(" ", x: 1, y: 4, stroke: none),
      grid.cell(" ", x: 4, y: 4, stroke: none),

      grid.cell("Stick me!", x: 2, y: 0, align: center),

      grid.cell(" ", x: 2, y: 1, stroke: (y: (dash: "dashed"))),
      grid.cell(" ", x: 1, y: 2, stroke: (dash: "dashed")),
      grid.cell(" ", x: 2, y: 2, stroke: (dash: "dashed")),
      grid.cell(" ", x: 3, y: 2, stroke: (right: (dash: "dashed"))),
      grid.cell(" ", x: 2, y: 3, stroke: (y: (dash: "dashed"))),
    )
  })


  // width = y / rows
}

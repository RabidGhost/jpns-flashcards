/// Default card size
#let card-size = (
  width: 91mm,
  height: 55mm,
)


#let card(english, einfo: [], japanese, jinfo: []) = (
  front: english,
  front-info: einfo,
  back: japanese,
  back-info: jinfo,
)

#let frontface(card) = (text: card.front, info: card.front-info)
#let backface(card) = (text: card.back, info: card.back-info)

/// Pad the end of the array with `content`, so its length is a multiple of `n`
#let padto(array, n, content: (text: [], info: [])) = {
  let diff-len = calc.rem(n - calc.rem(array.len(), n), n)
  let desired-len = array.len() + diff-len

  let output = range(0, desired-len).map(_ => content)

  let idx = 0
  while idx < array.len() {
    output.at(idx) = array.at(idx)
    idx += 1
  }

  return output
}

/// Layout flashcards into a list of pages, where each page has a front and back
#let layout_cards(rows, columns, definitions) = {
  return definitions
    .chunks(rows * columns)
    .map(defs => (
      front: defs.map(frontface),
      back: padto(defs.map(backface), columns)
        .chunks(columns)
        .map(chunk => chunk.rev())
        .flatten(),
    ))
}

/// Display the flashcard content
#let flashcard(content) = {
  align(center + horizon)[
    #set text(size: 20pt, weight: "regular")
    #content.text
    #set text(size: 17pt, weight: "extralight")

    #emph(content.info)
  ]
}

#let flashcards(
  rows: auto,
  columns: auto,
  alignment: center,
  display: flashcard,
  card: card-size,
  lang: (front: "en", back: "en"),
  border-stroke: 0.2pt + gray,
  definitions,
) = align(alignment, layout(lay => [
  #let rows = rows
  #let cols = columns

  #if (rows == auto) {
    rows = range(calc.floor((lay.height / card.height))).map(_ => card.height)
  }
  #if (cols == auto) {
    cols = range(calc.floor((lay.width / card.width))).map(_ => card.width)
  }

  #set grid(rows: rows, columns: cols)

  #for (front, back) in layout_cards(rows.len(), cols.len(), definitions) {
    set text(lang: lang.front)
    grid(stroke: border-stroke, ..front.map(display))
    colbreak()
    set text(lang: lang.back)
    grid(..back.map(display))
  }
]))

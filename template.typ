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
      back: padto(defs.map(backface), columns).chunks(columns).map(chunk => chunk.rev()).flatten(),
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
  card: (
    width: auto,
    height: auto,
  ),
  lang: (front: "en", back: "en"),
  border-stroke: 0.2pt + gray,
  definitions,
) = align(alignment, layout(lay => [
  #let rows = rows
  #let cols = columns
  #let card = card

  #if (rows == auto and card.height != auto) {
    rows = calc.floor((lay.height / card.height))
  } else if (card.height == auto) {
    // if `rows` is also `auto` then set it to 1
    if (rows == auto) {
      rows = 1
    }
    card.height = lay.height / rows
  }

  #if (cols == auto and card.width != auto) {
    cols = calc.floor((lay.width / card.width))
  } else if (card.width == auto) {
    // if `cols` is also `auto` then set it to 1
    if (cols == auto) {
      cols = 1
    }
    card.width = lay.width / cols
  }

  #set grid(rows: range(rows).map(_ => (card.height)), columns: range(cols).map(_ => (card.width)), inset: 0.2pt)

  #for (front, back) in layout_cards(rows, cols, definitions) {
    set text(lang: lang.front)
    grid(stroke: border-stroke, ..front.map(display))
    colbreak()
    set text(lang: lang.back)
    grid(..back.map(display))
  }
]))

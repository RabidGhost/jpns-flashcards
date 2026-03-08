/// Default card size
#let card = (
    width: 91mm,
    height: 55mm,
)

/// Pad an array with some value, so its length is a multiple of `n`
#let padto(array, n, content: []) = {
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

#let every_nth(array, n, offset: 0) = array.chunks(n).map(it => it.at(offset))

/// Layout flashcards into a list of pages, where each page has a front and back
#let layout_cards(rows, columns, definitions) = {
    return definitions.chunks(rows * columns * 2).map(defs => (
        front: every_nth(defs, 2),
        back: padto(every_nth(defs, 2, offset: 1), columns).chunks(columns).map(chunk => chunk.rev()).flatten()
    ))
}

/// Display the flashcard content
#let flashcard(content) = {
    align(center + horizon, content)
}

#let flashcards(
    rows: auto,
    columns: auto,
    display: flashcard,
    card: card,
    lang: (front: "en", back: "en"),
    definitions
) = layout(lay => [
    #let rows = rows
    #let cols = columns

    #if (rows == auto) { rows = range(calc.floor((lay.height / card.height))).map(_ => card.height) }
    #if (cols == auto) { cols = range(calc.floor((lay.width / card.width))).map(_ => card.width)}

    #set grid(rows: rows, columns: cols)

    #for (front, back) in layout_cards(rows.len(), cols.len(), definitions) {
        set text(lang: lang.front)
        grid(stroke: 1pt, ..front.map(display))
        colbreak()
        set text(lang: lang.back)
        grid(..back.map(display))
    }
])

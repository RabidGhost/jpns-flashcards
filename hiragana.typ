#import "template.typ": flashcards, card

#set page(margin: 10mm)

#let flashcard_filename_start = "Hiragana-Memory-HInt-Flash-Card-PDF/1773028933297-fc030297-b8ca-40d5-b4be-92b13b6dfa98_"

#let flashcard_filename_end = ".jpg"

#let image_count = 92




#let definitions = ()

#let n = 1
#while n < image_count{
  let front = flashcard_filename_start+ str(n)+ flashcard_filename_end
  let back = flashcard_filename_start+ str(n+1)+ flashcard_filename_end
  definitions.push(
  card(image(front), image(back))
  )
    n = n + 2
  }


#flashcards(
    lang: (front: "en", back: "jp"),
    definitions,
    columns: 3,
    rows: 3,
)

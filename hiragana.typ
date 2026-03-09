#import "template.typ": flashcards, card


// CONSTS TO CHANGE IF USING DIFFERENT IMAGES
// Provide the start and end of the filenames, so the iterating number is squished between
#let flashcard_filename_start = "Hiragana-Memory-HInt-Flash-Card-PDF/1773028933297-fc030297-b8ca-40d5-b4be-92b13b6dfa98_"
#let flashcard_filename_end = ".jpg"
// Set how many pages/images there are in total
#let image_count = 92


#set page(margin: 10mm)

#let definitions = ()

#let n = 1
#while n < image_count{
  // This assumes each side is offset by one.
  // So the fronts are 1,3,5 ect and backs are 2,4,6 ect
  let front = flashcard_filename_start + str(n) + flashcard_filename_end
  let back = flashcard_filename_start + str(n+1) + flashcard_filename_end
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

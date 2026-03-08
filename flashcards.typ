#import "template.typ": flashcards

#set page(margin: 1cm)

#set text(size: 15pt)

#show text.where(lang: "en"): set text(font: "IBM Plex Sans")
#show text.where(lang: "jp"): set text(font: "BIZ UDGothic")

#align(center,
    flashcards(
        lang: (front: "en", back: "jp"),
    (
        [1], [1],
        [2], [2],
        [3], [3],
        [4], [4],
    )
))

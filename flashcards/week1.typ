#import "../template.typ": card, flashcards

#set page(margin: 1cm, numbering: "1 of 1")
#set text(size: 15pt)


#let definitions = (
  card([oh, ah], [あ]),
  card([America, USA], [アメリカ], jinfo: [あめりか]),
  card([no], [いいえ]),
  card([house, home], [いえ]),
  card([England], [イギリス], jinfo: [いぎりす]),
  card([doctor], [いしゃ]),
  card([English], einfo: [language], [えいご]),
  card([yes], [ええ　・　はい]),
  card([Australia], [オーストラリア], jinfo: [おーすとらりあ]),
  card([wife], einfo: [someone else's], [おくさん]),
  card([bowing], [おじぎ]),
  card([office worker], [かいしゃいん]),
  card([student], [がくせい]),
  card([Korea], [かんこく]),
  card([bank employee], [ぎんこういん]),
  card([car], [くるま]),
  card([language], einfo: [of the country], [「country」ご]),
  card([Mr., Mrs., Miss.], [さん]),
  card([dictionary], [じしょ]),
  card([people], einfo: [of the country], [「country」じん]),
  card([major], [せんこう]),
  card([teacher], [せんせい]),
  card([thats right], [そう]),
  card([I see, is that so?], [そうですか]),
  card([university], [だいがく]),
  card([university student], [だいがくせい]),
  card([China], [ちゅうごく]),
  card([Tokyo], [とうきょう]),
  card([friend], [ともだち]),
  card([Japan], [にほん]),
  card([nice to meet you], einfo: [first introduction], [ひじめまして]),
  card([France], [フランス], jinfo: [ふらんす]),
  card([lawyer], [べんごし]),
  card([book], [ほん]),
  card([nice to meet you], [よろしく]),
  card([overseas student], [りゅうがくせい]),
  card([I], [わたし]),
)

#let card-size = (
  width: 91mm,
  height: 55mm,
)

#flashcards(
  lang: (front: "en", back: "jp"),
  definitions,
  card: card-size,
)

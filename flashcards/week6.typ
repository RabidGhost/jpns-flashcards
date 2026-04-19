#import "../template.typ": card, flashcards, furi

#set page(margin: 1cm)
#set text(size: 15pt)

#let definitions = (
  card([hot], [あつい]),
  card([good, nice], [いい]),
  card([busy], [いそがしい]),
  card([together], [いっしょに]),
  card([movie theatre], [えいがかん]),
  card([delicious], [おいしい]),
  card([Osaka], [おおさか]),
  card([tea], [おちゃ]),
  card([day before yesterday], [おととい]),
  card([company], [かいしゃ]),
  card([petrol], [#furi[が|そ|り|ん][ガ|ソ|リ|ン]]),
  card([yesterday], [きのう]),
  card([high school], [こうこう]),
  card([this week], [こんしゅう]),
  card([sashimi], [さしみ]),
  card([cold], [さむい]),
  card([I like], [すきです]),
  card([last week], [せんしゅう]),
  card([clean], einfo: [rooms, house], [そうじします]),
  card([gym], einfo: [school gymnasium], [たいいくかん]),
  card([expensive, high], [たかい]),
  card([father], [ちち], jinfo: [父]),
  card([a bit, few, little], [ちょっと]),
  card([or something], [でも]),
  card([weather], [てんき]),
  card([by the way], [ところで]),
  card([summer holiday], [なつやすみ]),
  card([badminton], [#furi[ば|ど|み|ん|と|ん][バ|ド|ミ|ン|ト|ン]]),
  card([fast, early], [はやい]),
  card([airplane], [ひこうき]),
  card([pool], [#furi[ぷ][プ]ー#furi[る][ル]]),
  card([Hokkaido], [ほっかいどう]),
  card([really?], [ほんとうに]),
  card([town], [まち]),
  card([difficult, hard], [むずかしい]),
  card([question], [もんだい]),
  card([yesterday night, yesterday evening], [ゆうべ]),
  card([if you like, if its alright], [よかったら]),
  card([next week], [らいしゅう]),
  card([parents], [りょうしん]),
)

#flashcards(
  lang: (front: "en", back: "jp"),
  definitions,
  card: (
    width: 91mm,
    height: 55mm,
  ),
)

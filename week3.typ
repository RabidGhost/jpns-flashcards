#import "template.typ": flashcards, card

#set page(margin: 1cm)
#set text(size: 15pt)

#show text.where(lang: "en"): set text(font: "IBM Plex Sans")
#show text.where(lang: "jp"): set text(font: "Hiragino Sans")

#let definitions = (
    card([you], [あなた]),
    card([that], [あの], einfo: [over there]),
    card([that one], einfo: [over there], [あれ]),
    card([now], [いま], jinfo: [今]),
    card([movie], [えいが]),
    card([umbrella], [かさ]),
    card([bag], [かばん]),
    card([camera], [カマラ]),
    card([shoes], [くつ]),
    card([linguistics], [げんごがく], jinfo: [言語学]),
    card([p.m.], [ごご], jinfo: [午後]),
    card([a.m.], [ごぜん], jinfo: [午前]),
    card([this], [これ]),
    card([this one], [この]),
    card([concert], [コンサート]),
    card([magazine], [ざっし]),
    card([occupation, job], [しごと]),
    card([Sydney], [シドニー]),
    card([then], [じゃあ]),
    card([class], [じゅぎょう]),
    card([place of birth], [しゅっしん]),
    card([hobby], [しゅみ]),
    card([newspaper], [しんぶん]),
    card([swimming], [すいえい]),
    card([living place], [すまい]),
    card([that], [その]),
    card([that one], [それ]),
    card([fishing], [つり]),
    card([date (romantic)], [デート]),
    card([letter], [てがみ]),
    card([train], [でんしゃ]),
    card([reading books], [どくしょ]),
    card([watch, clock], [とけい]),
    card([where], [どこ、　どちら]),
    card([library], [としょかん]),
    card([name], [なまえ]),
    card([what], [なん、　なに], jinfo: [何]),
    card([party], [パーチイー]),
    card([person, people], [ひと], jinfo: [人]),
    card([pen], [ペン]),
    card([hat], [ほうし]),
    card([family name], [みょうじ]),
    card([one more time], [もいちど]),
    card([baseball], [やきゅう]),
    card([slowly], [ゆっくり]),
)

#flashcards(
    lang: (front: "en", back: "jp"),
    definitions
)

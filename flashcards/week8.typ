#import "../template.typ": card, flashcards, kata

#set page(margin: 1cm, numbering: "1 of 1")
#set text(size: 15pt)

#let definitions = (
  card([meet, see], [あう]),
  card([open], [あける]),
  card([the day after tomorrow], [あさって]),
  card([play, hang around], [あそび]),
  card([older sister], [あね]),
  card([drop, fell down], [おちる]),
  card([sound], einfo: [noise], [おと]),
  card([change], [かえる]),
  card([borrow], [かりる]),
  card([think], [かんがえう]),
  card([cut], [きる]),
  card([wear], einfo: [put on], [きる]),
  card([wedding ceremony], [けっこんしぎ]),
  card([around here], [このあたり]),
  card([this semester], [こんがっき]),
  card([murder], [さつじん]),
  card([four seasons], [しき]),
  card([die], [しぬ]),
  card([close], [しめる]),
  card([believe], [しんじる]),
  card([slip], [すべる]),
  card([definitely], [ぜひ]),
  card([graduation], [そつぎょう]),
  card([Thai food], [#kata[タイ][たい]りょうり]),
  card([birthday], [たんじょうび]),
  card([go out], [でかける]),
  card([take], [とる]),
  card([drinks], [のみもの]),
  card([news], kata[ニュース][にゅーす]),
  card([begin, start], [はじまる]),
  card([place], einfo: [venue], [ばしょう]),
  card([run], [はしる]),
  card([present], kata[プレゼント][ぷれぜんと]),
  card([fountain], [ふんすい]),
  card([real, really], [ほんとう]),
  card([yet], [まだ]),
  card([arrange to meet], [まちあわせる]),
  card([wait for], [まつ]),
  card([lake], [みずうみ]),
  card([of course], [もちろん]),
  card([take], einfo: [a thing], [もっていく]),
  card([rest], einfo: [take a break], [やすむ]),
  card([understand], [わかる]),
)

#flashcards(
  lang: (front: "en", back: "jp"),
  definitions,
  card: (
    width: 91mm,
    height: 55mm,
  ),
)

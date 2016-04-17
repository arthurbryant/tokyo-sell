# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  coding: utf-8

  item1 = Item.create(name: 'セタフィル 7日間うるおいトライアルキット', top_img_url: 'http://ecx.images-amazon.com/images/I/41SpX%2BjIv3L._SL160_SL160_.jpg', price: 1382, star: 4.0, asin: 'B00VHRI9C6')
  item2 = Item.create(name: 'カバーマーク クレンジングミルク 200g', top_img_url: 'http://ecx.images-amazon.com/images/I/217UIxzQnCL._SL160_SL160_.jpg', price: 3240 , star: 4.3, asin: 'B005IU9M1K')
  item3 = Item.create(name: 'シュウウエムラ ハイパフォーマンス クレンジング オイル アドバンスト クラシック 450ml', top_img_url: 'http://ecx.images-amazon.com/images/I/311zAo7IUNL._SL160_SL160_.jpg', price: 7336, star: 4.3, asin:'xxx')

  other_img_urls1 = ['http://ecx.images-amazon.com/images/I/61ErS1EpCVL._SL1500_.jpg']
  desc1 = '商品紹介

ファンデーションがすっきり落ちて、化粧水を忘れるほどの「潤い感」。

軽くなじませるだけでメイク料が浮き上がり、落ちにくいファンデーションも肌に負担をかけずに落とすことができます。水やぬるま湯で洗い流しやすく、すっきりと洗い流すことができます。しっとりとした潤いのある肌に洗い上げます。エッセンシャルオイルのほのかな香りです。濡れた手でも使用できます。

使用上の注意

化粧品がお肌に合わない、即ち使用中に次の症状が現れた場合は直ちに使用を中止してください。そのまま化粧品類の使用を続けますと、症状を悪化させる恐れがございますので、皮膚科専門医等にご相談される事をおすすめします。使用中、赤味、腫れ、かゆみ、刺激等の以上が現れた場合。*傷やはれもの、湿疹等異常のある部位にはお使いにならないでください。*使用後は必ずしっかりフタをしめてください。*いったん取り出したら、容器に戻さないでください。*乳幼児の手の届かないところに保管してください。*高温または低温の場所、直射日光のあたる場所には保管しないでください。

使用方法

手のひらに適量(4~5プッシュ)を取り、お顔全体になじませてください。(ご使用量が少なすぎると、メイクアップが十分に落とせない場合があります。適量を守ってお使い下さい。)小鼻の周りなど毛穴にファンデーションが入りやすい部分や、アイメイクをしている目もとは、特に念入りになじませてください。しっかりとなじませた後、水または、ぬるま湯で洗い流してください。'

  other_img_urls2 = ['http://ecx.images-amazon.com/images/I/71kAG6GkhIL._SL1500_.jpg']
  desc2 = '商品紹介

保湿効果を高めるヒアルロン酸、コラーゲン、セラミドなどの美容液成分を贅沢に91.4%配合したホットクレンジングゲル。温感ゲルがメイクはもちろん、気になる毛穴汚れをやさしく落とし、うるおいに満ちた肌に洗い上げます。また、カプセル化パパイン酵素が古くなった角質をやさしくオフします。さらにクレンジング後のスキンケアアイテムを肌に導くブースター効果も。100%天然精油から抽出したグレープフルーツの香りです。
無着色・合成香料無添加・無鉱物湯・石油系界面活性剤無添加・エタノール無添加・パラベン無添加

使用方法

顔や手の水気を拭き取り、ホットクレンジングゲルをマスカット1個分、手に取ります。両手のひらを軽くすり合わせて、やわらかくします。 顔全体に広げたあと、30秒から1分程度、くるくると円を描くように、やさしくメイクとなじませます。毛穴やザラつきが気になっても、力を入れてゴシゴシするのは厳禁! やさしくくるくるなじませましょう。 手を濡らし、その手で顔全体をなで、乳化(ゲルと水が混ざった状態)させます。乳化を3回程度繰り返し行うと、すすぎやすくなります。 32℃前後の水に近いぬるま湯(流水)で、水が白く濁らなくなるまで20回ほどていねいにすすぎます。ダブル洗顔は不要です。 ※髪の生え際・小鼻・あごなどのすすぎ残しにご注意ください。'

  other_img_urls3 = ['http://ecx.images-amazon.com/images/I/311zAo7IUNL.jpg']
  desc3 = '商品紹介

肌に合わない場合は、使用を中止し医師へご相談ください。

ダブル洗顔不要のクレンジングオイル

お肌に負担をかけずに、落ちにくいウォータープルーフのマスカラもするりと落とすクレンジングオイル。

椿科の植物から抽出した、天然オイル配合。

ご注意（免責）＞必ずお読みください

肌に合わない場合は、使用を中止し医師へご相談ください。'

  ItemDetail.create(description: desc1, other_img_urls: other_img_urls1, item: item1)
  ItemDetail.create(description: desc2, other_img_urls: other_img_urls2, item: item2)
  ItemDetail.create(description: desc3, other_img_urls: other_img_urls3, item: item3)

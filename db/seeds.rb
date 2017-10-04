Borad.create!([
  {name: "挨拶", description: "説明", active: "0", icon: "", borad_id: nil},
  {name: "a", description: "b", active: nil, icon: nil, borad_id: nil},
  {name: "hoge", description: "huga", active: nil, icon: nil, borad_id: nil},
  {name: "piyo", description: "hogera", active: nil, icon: nil, borad_id: nil},
  {name: "マイティーベース", description: "メイン基地です", active: nil, icon: nil, borad_id: nil}
])
Frend.create!([
  {user_id: 1, frend_user: 2, comments: nil},
  {user_id: 1, frend_user: 3, comments: nil}
])
Tagname.create!([
  {name: "ケモノ", count: nil},
  {name: "ポケモン", count: nil},
  {name: "女の子", count: nil},
  {name: "ドラゴン", count: nil}
])
RelationDetail.create!([
  {user_name: "garchomp", frend_name:"sayanon",frend_id:2, user_id:1,comment:"garchomp=>sayanon_test"},
  {user_name: "garchomp", frend_name:"yowamushi",frend_id:3, user_id:1,comment:"garchomp=>yowamushi"}
])
Taguser.create!([
  {name: "garchomp", tag: "ケモノ", user_id: 0},
  {name: "garchomp", tag: "ポケモン", user_id: 0},
  {name: "カキイカダ", tag: "ポケモン", user_id: 0},
  {name: "カキイカダ", tag: "女の子", user_id: 0},
  {name: "カキイカダ", tag: "ケモノ", user_id: 0},
  {name: "garchomp", tag: "ドラゴン", user_id: 0}
])
User.create!([
  {name: "garchomp", email: "otoka.japanesedrum@gmail.com", description: "おっす！俺はガブリアスのおとかだ。現在妻のさやのん（@punichan_Denpa）と一緒に生活しているぞ！ アイコンはカキイカダさんからだ。 ＞ちなみに（たく（人間））もなり参加しているからよろしくねー♪＜", image: "otoka.png", password: "matutani9613", user_id: "1", integer: nil, sex: 0, original_work: "ポケモン", race: "ガブリアス", height: 198, width: 94, street_address: "ワイワイタウン",twitter: "@matutaqnitakumi", facebook: "https://www.facebook.com/profile.php?id=100012109625554", link_icon: "0", tag: nil, age: 19, birthday: "1997-10-17", story: "おっす！俺はガブリアスのおとかだ。現在妻のさやのん（@punichan_Denpa）と一緒に生活しているぞ！ アイコンはカキイカダさんからだ。 ＞ちなみに（たく（人間））もなり参加しているからよろしくねー♪＜", homepage: "garchomp.com"},
  {name: "sayanon", email: "sayanon@gmail.com", description: "aro-ra", image: "gaburiza3.png", password: "sayanons", user_id: "2", integer: nil, sex: 1, original_work: "ポケモン", race: "リザードン", height: 177, width: 90, street_address: "アローラ地方", twitter: "@sayanon", facebook: nil, link_icon: "2451", tag: nil, age: 21, birthday: "2000-01-01", story: "さやのんの家系図など", homepage: "sayanon.com"},
  {name: "yowamushi", email: "yowamushi@gmail.com", description: "ボクの自己紹介ページだよ。詳しくは後でね", image: "sayanon.png", password: "yowamushis", user_id: "3", integer: nil, sex: 1, original_work: "ポケモン", race: "ルガルガン（真夜中の姿）", height: 110, width: 25, street_address: "アローラ地方", twitter: "@yowamushi", facebook: nil, link_icon: "3524", tag: nil, age: 15, birthday: nil, story: nil, homepage: "yowamushi.com"}
])

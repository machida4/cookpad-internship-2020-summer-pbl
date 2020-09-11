# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(
  name: 'テスト太郎',
  description: '料理初心者です。',
)
review_user = User.create(
  name: 'ノンフロン太郎',
  description: 'レビュー大好き',
)
another_review_user = User.create(
  name: '六種類の野菜子',
  description: 'レビュー大好き',
)

store = Store.create(
  name: 'スーパーさるすべり',
  description: '愛されて300年！ 営業時間：8:00 ~ 23:00',
)

menus = []

menus << (stew_menu = Menu.create(
  name: "たっぷり玉ねぎのクリームシチュー",
  time: '20分',
  price: '330',
  image: open("#{Rails.root}/db/fixtures/stewing.jpg"),
  store_id: store.id,
  ingredients_text:
    "シチュールウ 1/4個,
    とり肉 100g,
    玉ねぎ 1/2個,
    じゃがいも 1/2個
    にんじん 1/4本
    牛乳パック 200ml
    ",
  recipe_text:
    "1
    具材を切りそろえます。
    玉ねぎは繊維にそって、くし型に切ります。
    じゃがいもは皮をむいて、芽を取り除き、一口大に切りそろえていきます。
    にんじんは乱切りで一口大に切ります。皮はむかなくても構いません。
    2
    とり肉を切ります。
    煮込むと小さくなるので、大きめに切るのがコツです。
    キッチンばさみをお持ちの方はぜひ使ってください。
    3
    材料を炒めます。
    フライパンにサラダ油を加え、中火ですこし温めたら、玉ねぎを入れます。
    ほんの少し焼き色がつく程度で結構です。
    玉ねぎが炒まったら、じゃがいも、にんじんを入れ、油が回ったらとり肉も入れます。
    4
    具材全体に油が回ったら、水を入れて煮込みます。
    具材が柔らかくなるまで煮込みましょう（沸騰してから15分程度）。
    5
    最後に牛乳とルウを入れて5分程度煮込んで、器に盛り付けたら完成です。
    ",
))
review = MenuReview.new
review.user = review_user
review.menu = stew_menu
review.star = 5
review.description = "完全初心者の私でもおいしくできました！"
review.save!

menus << Menu.create(
  name: "定番！かんたん具だくさんカレー",
  time: '20分',
  price: '330',
  image: open("#{Rails.root}/db/fixtures/curry.jpg"),
  store_id: store.id,
  ingredients_text:
    "材料",
  recipe_text:
    "レシピ",
)
menus << Menu.create(
  name: "夏のさっぱり豚汁",
  time: '20分',
  price: '330',
  image: open("#{Rails.root}/db/fixtures/tonjiru.jpg"),
  store_id: store.id,
  ingredients_text:
    "材料",
  recipe_text:
    "レシピ",
)
menus << Menu.create(
  name: "お手軽チャーハン",
  time: '20分',
  price: '330',
  image: open("#{Rails.root}/db/fixtures/chahan.jpg"),
  store_id: store.id,
  ingredients_text:
    "材料",
  recipe_text:
    "レシピ",
)
menus << Menu.create(
  name: "懐かしのオムライス",
  time: '20分',
  price: '330',
  image: open("#{Rails.root}/db/fixtures/omuraisu.jpg"),
  store_id: store.id,
  ingredients_text:
    "材料",
  recipe_text:
    "レシピ",
)

menus.each do |menu|
  review = MenuReview.new
  review.user = another_review_user
  review.menu = menu
  review.star = 4
  review.description = "よかったです"

  review.save!
end

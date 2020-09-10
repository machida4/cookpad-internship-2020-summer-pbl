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

store = Store.create(
  name: 'スーパーオオスズメバチ',
  description: '愛されて300年！ 営業時間：8:00 ~ 23:00',
)

10.times do |index|
  Menu.create(
    name: "かんたんカレー#{index}",
    time: '20分',
    price: '300',
    image: open("#{Rails.root}/db/fixtures/curry.jpg"),

    ingredients_text:
      "豚こま: 40g,
      じゃがいも: 1/2個,
      にんじん: 1/2本,
      たまねぎ: 1/2個,
      カレールウ: 2切れ
      ",
    recipe_text:
      "カレーカレーカレー
      カレーカレーカレー
      カレーカレーカレー
      カレーカレーカレー
      ",
  )
end

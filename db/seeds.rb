# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
  email: "a@a",
  password: "aaaaaa"
  )
Customer.create!(
  [
    {
      first_name: "おねがい",
      last_name: "プロテイン",
      first_name_kana: "オネガイ",
      last_name_kana: "プロテイン",
      email: "0@0",
      postal_code: "7777777",
      address: "大阪府大阪市中央区1-1-1-1-1",
      telephone_number: "00099997777",
      is_active: true,
      password: "000000",
    },
    {
      first_name: "おねがい",
      last_name: "クレアチン",
      first_name_kana: "オネガイ",
      last_name_kana: "クレアチン",
      email: "1@1",
      postal_code: "8888888",
      address: "和歌山県有田市11111",
      telephone_number: "00088887777",
      is_active: false,
      password: "111111",
    }
  ]
  )
Address.create!(
  [
    {
      customer_id: 1,
      name: "渋谷",
      postal_code: "5959599",
      destination: "東京都渋谷区神南1-19-11 パークウェースクエア2 4階"
    },
    {
      customer_id: 1,
      name: "新宿校",
      postal_code: "1600022",
      destination: "東京都新宿区新宿2-5-10 成信ビル 4階"
    },
    {
      customer_id: 1,
      name: "難波校",
      postal_code: "5420076",
      destination: "大阪府大阪市中央区難波4-7-14 難波フロントビル 4階"
    }
  ]
  )
Genre.create!(
  [
    {
      name: "プロテイン",
      is_active: true,
    },
    {
      name: "フード",
      is_active: true,
    },
    {
      name: "サプリ",
      is_active: false,
    },
    {
      name: "トレーニング器具",
      is_active: false,
    },
    {
      name: "その他",
      is_active: true,
    }
  ]
  )
for i in 1..10 do
  Item.create!(
    [
      {
        genre_id: 1,
        name: "プロテイン#{i}",
        introduction: "#{3*i-2}番目の商品です。",
        price: rand(1..10) * 100,
        image: File.open("./app/assets/images/cake#{i%5+1}.jpg"),
        is_active: true
      },
      {
        genre_id: 2,
        name: "フード#{i}",
        introduction: "#{3*i-1}番目の商品です。",
        price: rand(1..10) * 200,
        image: File.open("./app/assets/images/cookies#{i%5+1}.jpg"),
        is_active: true
      },
      {
        genre_id: 3,
        name: "サプリ#{i}",
        introduction: "#{3*i}番目の商品です。",
        price: rand(1..10) * 300,
        image: File.open("./app/assets/images/pudding#{i%5+1}.jpg"),
        is_active: false
      }
    ]
    )
end
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
      last_name: "太郎",
      first_name_kana: "オネガイ",
      last_name_kana: "タロウ",
      email: "0@0",
      postal_code: "7777777",
      address: "大阪府大阪市中央区1-1-1-1-1",
      telephone_number: "00099997777",
      is_active: true,
      password: "000000",
    },
    {
      first_name: "ぷろていん",
      last_name: "花子",
      first_name_kana: "プロテイン",
      last_name_kana: "ハナコ",
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
      name: "新宿",
      postal_code: "1600022",
      destination: "東京都新宿区新宿2-5-10 成信ビル 4階"
    },
    {
      customer_id: 1,
      name: "難波",
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
      is_active: true,
    },
    {
      name: "トレーニング器具",
      is_active: true,
    },
    {
      name: "グッズ",
      is_active: true,
    }
  ]
  )
for i in 1..5 do
  Item.create!(
    [
      {
        genre_id: 1,
        name: "WHI-protein #{i}",
        introduction: "理想とする筋肉のために!理想的なカラダづくりに取り組む方のために、たんぱく原料として利用効率が高いホエイプロテインのみを採用しました。タンパク質はなんと一杯あたり30g配合！",
        price: 5000,
        image: File.open("./app/assets/images/protein#{i%5+1}.jpg"),
        is_active: true
      },
      {
        genre_id: 2,
        name: "プロテインバー#{i}",
        introduction: "たっぷりたんぱく質のシリアルバー。スポーツ時に嬉しい、プロテイン30ｇ配合。プロテイン入りとは思えないおいしさを実現。",
        price: 120,
        image: File.open("./app/assets/images/ber#{i%5+1}.jpg"),
        is_active: true
      },
      {
        genre_id: 3,
        name: "サプリメント#{i}",
        introduction: "スポーツサプリとして人気のアミノ酸です。アスリートやボディビルダーにとって重要な成分を含んでいます。トレーニングや競技のお供に。",
        price: 4000,
        image: File.open("./app/assets/images/Supplement#{i%5+1}.jpg"),
        is_active: true
      },
      {
        genre_id: 4,
        name: "トレーニングアイテム#{i}",
        introduction: "おねがいプロテイン製の上質なトレーニングアイテムです！ホームトレーニングでの使用にも適しています！",
        price: 4000,
        image: File.open("./app/assets/images/item#{i%5+1}.jpg"),
        is_active: true
      },
      {
        genre_id: 5,
        name: "プロテインシェイカー#{i}",
        introduction: "サプリケースやスプリング付属しています！液漏れが一切しない、おねがいプロテイン製のプロテインシェイカーです！",
        price: 4000,
        image: File.open("./app/assets/images/goods#{i%5+1}.jpg"),
        is_active: true
      }
    ]
    )
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Address.create!(
  [
    {
      name: '玄関',
      user_id: 1
    },
    {
      name: '洗面化粧台',
      user_id: 1
    },
    {
      name: 'キッチン',
      user_id: 1
    },
    {
      name: 'クローゼット',
      user_id: 1
    },
    {
      name: 'リビング',
      user_id: 1
    }
  ]
)

Category.create!(
  [
    {
      name: '衣服・靴',
      user_id: 1
    },
    {
      name: 'インテリア・小物',
      user_id: 1
    },
    {
      name: '本',
      user_id: 1
    },
    {
      name: 'おもちゃ・ホビー・グッズ',
      user_id: 1
    },
    {
      name: '家電',
      user_id: 1
    }
  ]
)
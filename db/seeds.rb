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
      name: '玄関'
    },
    {
      name: '洗面化粧台'
    },
    {
      name: 'キッチン'
    },
    {
      name: 'クローゼット'
    },
    {
      name: 'リビング'
    }
  ]
)

Category.create!(
  [
    {
      name: '衣服・靴'
    },
    {
      name: 'インテリア・小物'
    },
    {
      name: '本'
    },
    {
      name: 'おもちゃ・ホビー・グッズ'
    },
    {
      name: '家電'
    }
  ]
)
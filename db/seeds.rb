# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  {
    email: "testmail@co.jp",
    password: "testtest"
  }
  )

Address.create!(
  [
    {
      name: '玄関',
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
      name: '仕事用',
      user_id: 1
    }
  ]
)

item1 = Item.create!(
      name: 'ブーツ',
      address_id: 1,
      category_id: 1,
      user_id: 1,
)
item1.picture.attach(io: File.open(Rails.root.join('app/assets/images/sample/boots.jpg')),filename: 'boots.jpg')

item2 = Item.create!(
      name: '革靴',
      address_id: 1,
      category_id: 1,
      user_id: 1,
)
item2.picture.attach(io: File.open(Rails.root.join('app/assets/images/sample/leathershoes.jpg')),filename: 'leathershoes.jpg')

item3 = Item.create!(
      name: 'スーツ',
      address_id: 2,
      category_id: 1,
      user_id: 1,
)
item3.picture.attach(io: File.open(Rails.root.join('app/assets/images/sample/suit.jpg')),filename: 'suit.jpg')

item4 = Item.create!(
      name: 'パソコン',
      address_id: 3,
      category_id: 3,
      user_id: 1,
)
item4.picture.attach(io: File.open(Rails.root.join('app/assets/images/sample/pc.jpg')),filename: 'pc.jpg')

item5 = Item.create!(
      name: 'メガネ',
      address_id: 3,
      category_id: 2,
      user_id: 1,
)
item5.picture.attach(io: File.open(Rails.root.join('app/assets/images/sample/glasses.jpg')),filename: 'grasses.jpg')

item6 = Item.create!(
      name: '財布',
      address_id: 3,
      category_id: 2,
      user_id: 1,
)
item6.picture.attach(io: File.open(Rails.root.join('app/assets/images/sample/wallet.jpg')),filename: 'wallet.jpg')

item7 = Item.create!(
      name: 'ジーンズ',
      address_id: 2,
      category_id: 1,
      user_id: 1,
)
item7.picture.attach(io: File.open(Rails.root.join('app/assets/images/sample/jeans.jpg')),filename: 'jeans.jpg')

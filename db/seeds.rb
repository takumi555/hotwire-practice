# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Coffee.create(
  [
    {name: "ドリップコーヒー", description: "" },
    {name: "コールドブリューコーヒー", description: "" },
    {name: "カフェミスト", description: "" },
    {name: "コーヒープレス", description: "" }
  ]
)

Espresso.create(
  [
    {name: "ラテ", description: "" },
    {name: "ソイラテ", description: "" },
    {name: "アーモンドミルクラテ", description: "" },
    {name: "オーツミルクラテ", description: "" },
    {name: "カプチーノ", description: "" },
    {name: "キャラメルマキアート", description: "" },
    {name: "カフェモカ", description: "" },
    {name: "ホワイトモカ", description: "" },
    {name: "アメリカーノ", description: "" },
    {name: "エスプレッソ", description: "" },
    {name: "エスプレッソコンパナ", description: "" },
    {name: "エスプレッソマキアート", description: "" },
    {name: "ムースフォームラテ", description: "" }
  ]
)
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
# db/seeds.rb
Article.destroy_all

Article.create!([
  { title: "Ruby入門", body: "配列とeachを復習中です。" },
  { title: "Rails基礎", body: "scaffoldでCRUDを作成しました。" },
  { title: "Bootstrap導入済み", body: "フォームがきれいになりました。" },
  { title: "今日の学び", body: "Seedでデータを自動投入できるようになった！" },
  { title: "明日の予定", body: "table表示に挑戦します。" }
])

puts "記事を #{Article.count} 件作成しました。"

class Article < ApplicationRecord
    # コメントテーブルとの外部結合
    has_many :comments, dependent: :destroy
    # バリデーション
    validates :title, presence: true, length: {maximum: 50}
    validates :body, presence: true
end

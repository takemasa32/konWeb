class Blog < ApplicationRecord
  mount_uploader :post_image, ImageUploader

  # バリテーションのための記述
  validates :title, presence: true
  validates :body, presence: true
  validates :category, presence: true
  validates :user, presence: true

  # 次，前のページボタン作成のため #
  def next
    Blog.where("id > ?", id).first
  end

  def previous
    Blog.where("id < ?", id).last
  end
  # ここまで #
end
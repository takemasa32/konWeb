class ImageCashe < ActiveRecord::Migration[7.0]
  def up
    add_column :blogs, :image_cache,:string
  end
end

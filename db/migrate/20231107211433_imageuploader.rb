
class Imageuploader < ActiveRecord::Migration[7.0]
  def up
    add_column :blogs, :post_image,:string
  end
end

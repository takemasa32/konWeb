class ChangeDatatypeBodyOfBlogs < ActiveRecord::Migration[7.0]
  def change
    change_column :blogs, :body, :text
  end
end

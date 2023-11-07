class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :body
      t.string :category
      t.string :user

      t.timestamps
    end
  end
end

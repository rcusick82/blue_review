class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |table|
      table.string :title, null: false
      table.text :body, null: false

      table.timestamps
    end
  end
end

class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.date :publish_date
      t.text :body

      t.timestamps
    end
  end
end

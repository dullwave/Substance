class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :title
      t.text :content
      t.text :image_url
      t.references :user, index: true

      t.timestamps
    end
  end
end

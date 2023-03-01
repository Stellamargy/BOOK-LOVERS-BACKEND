class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :image_url
      t.string :genre 
      t.string :publisher
      t.integer :author_id
      t.integer :rating 
    end
  end
end

class CreateVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :videos do |t|
      t.string :category
      t.string :title
      t.float :length
      t.string :genre
      t.integer :rating

      t.timestamps
    end
  end
end

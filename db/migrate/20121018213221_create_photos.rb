class CreatePhotos < ActiveRecord::Migration
  def up
    create_table :photos do |t|
      t.string :title
      t.string :slugged_title
      t.text :description
      t.text :extra
      t.text :meta  #serialised metadata
      t.integer :category_id
      t.string :image
      t.timestamps
    end
  end

  def down
    drop_table :photos
  end
end

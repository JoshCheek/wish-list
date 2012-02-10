class CreateImages < ActiveRecord::Migration
  def up
    create_table :images, :force => true do |t|
      t.string :image
      t.references :item
      t.timestamps
    end
    
    remove_column :items, :image
  end

  def down
    add_column :items, :image, :string
    drop_table :images
  end
end
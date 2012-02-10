class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.boolean :one_hundred
      t.text :item_notes
      t.string :shopping_suggestions

      t.timestamps
    end
  end
end

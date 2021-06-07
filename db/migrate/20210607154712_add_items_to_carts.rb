class AddItemsToCarts < ActiveRecord::Migration[5.2]

  def change
    create_table :add_items_to_carts do |t|
      t.references :item, index: true
      t.references :cart, index: true

      t.timestamps
    end
  end   
   
end
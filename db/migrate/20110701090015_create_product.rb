class CreateProduct < ActiveRecord::Migration
  def up
    create_table :products, :force => true do |t|
      t.string :name, :code
      t.integer :price
      t.timestamps
    end
  end

  def down
    drop_table :products
  end
end

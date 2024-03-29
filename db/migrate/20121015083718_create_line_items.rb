class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
     # t.integer :product_id
      #t.integer :order_id
      #t.integer :quantity
      #t.decimal :total_price
 t.integer :product_id,  :null => false, :options =>
        "CONSTRAINT fk_line_item_products REFERENCES products(id)"
      t.integer :order_id,    :null => false, :options =>
        "CONSTRAINT fk_line_item_orders REFERENCES orders(id)"
      t.integer :quantity,    :null => false
      t.decimal :total_price, :null => false, :precision => 8, :scale => 2
      t.timestamps
    end
  end
end

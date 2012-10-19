class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
       t.string :product
        t.string :quantity

      t.timestamps
    end
  end
end

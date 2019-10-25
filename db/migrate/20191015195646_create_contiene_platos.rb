class CreateContienePlatos < ActiveRecord::Migration[5.2]
  def change
    create_table :contiene_platos do |t|
      t.integer :order_id
      t.integer :plt_id

      t.timestamps
    end
  end
end

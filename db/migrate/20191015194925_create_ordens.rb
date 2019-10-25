class CreateOrdens < ActiveRecord::Migration[5.2]
  def change
    create_table :ordens do |t|
      t.integer :user_id
      t.integer :medio_pago
      t.string :direccion_entrega
      t.datetime :hora_entrega
      t.boolean :estado
      t.string :notas

      t.timestamps
    end
  end
end

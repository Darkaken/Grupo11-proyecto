class CreatePlatos < ActiveRecord::Migration[5.2]
  def change
    create_table :platos do |t|
      t.integer :rest_id
      t.string :nombre
      t.float :precio
      t.string :descripcion
      t.integer :porciones
      t.string :imagen

      t.timestamps
    end
  end
end

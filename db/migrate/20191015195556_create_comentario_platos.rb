class CreateComentarioPlatos < ActiveRecord::Migration[5.2]
  def change
    create_table :comentario_platos do |t|
      t.integer :user_id
      t.integer :plt_id
      t.datetime :fecha
      t.integer :puntaje
      t.string :contenido

      t.timestamps
    end
  end
end

class CreateComentarioRestaurantes < ActiveRecord::Migration[5.2]
  def change
    create_table :comentario_restaurantes do |t|
      t.integer :user_id
      t.integer :rest_id
      t.datetime :fecha
      t.integer :puntaje
      t.string :contenido

      t.timestamps
    end
  end
end

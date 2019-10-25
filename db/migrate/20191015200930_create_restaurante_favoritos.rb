class CreateRestauranteFavoritos < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurante_favoritos do |t|
      t.integer :user_id
      t.integer :rest_id

      t.timestamps
    end
  end
end

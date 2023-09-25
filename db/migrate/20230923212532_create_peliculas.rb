class CreatePeliculas < ActiveRecord::Migration[7.0]
  def change
    create_table :peliculas do |t|
      t.string :name
      t.string :director
      t.date :año

      t.timestamps
    end
  end
end

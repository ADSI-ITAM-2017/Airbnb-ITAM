class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :direccion
      t.string :descripcion
      t.decimal :maxPrice
      t.string :tipo
      t.string :servicios

      t.timestamps
    end
  end
end

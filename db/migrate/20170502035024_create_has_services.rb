class CreateHasServices < ActiveRecord::Migration[5.0]
  def change
    create_table :has_services do |t|
      t.references :property, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end

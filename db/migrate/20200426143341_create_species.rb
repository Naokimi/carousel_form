class CreateSpecies < ActiveRecord::Migration[6.0]
  def change
    create_table :species do |t|
      t.string :name
      t.text :biography
      t.string :archetype
      t.string :portrait
      t.references :empire, null: false, foreign_key: true

      t.timestamps
    end
  end
end

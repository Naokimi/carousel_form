class CreateEmpires < ActiveRecord::Migration[6.0]
  def change
    create_table :empires do |t|
      t.string :name
      t.string :multiplayer_session_code

      t.timestamps
    end
  end
end

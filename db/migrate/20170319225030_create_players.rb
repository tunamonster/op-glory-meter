class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.text :vg_id
      t.text :name
      t.integer :level
      t.integer :wins

      t.timestamps
    end
  end
end

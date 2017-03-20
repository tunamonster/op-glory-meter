class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.text :vg_id
      t.text :match_id
      t.boolean :winner
      t.boolean :left_side
      t.integer :aces
      t.integer :gold
      t.integer :hero_kills
      t.integer :krakens
      t.integer :turret_kills
      t.string :turrets_remaining
      t.string :integer

      t.timestamps
    end
  end
end

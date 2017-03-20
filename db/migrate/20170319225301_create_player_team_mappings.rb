class CreatePlayerTeamMappings < ActiveRecord::Migration[5.0]
  def change
    create_table :player_team_mappings do |t|
      t.integer :player_id
      t.integer :team_id
      t.integer :champion_id

      t.timestamps
    end
  end
end

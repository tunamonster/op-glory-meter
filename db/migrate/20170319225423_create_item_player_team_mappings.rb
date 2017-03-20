class CreateItemPlayerTeamMappings < ActiveRecord::Migration[5.0]
  def change
    create_table :item_player_team_mappings do |t|
      t.integer :item_id
      t.integer :pTM_id

      t.timestamps
    end
  end
end

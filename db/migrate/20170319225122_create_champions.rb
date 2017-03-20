class CreateChampions < ActiveRecord::Migration[5.0]
  def change
    create_table :champions do |t|
      t.text :name

      t.timestamps
    end
  end
end

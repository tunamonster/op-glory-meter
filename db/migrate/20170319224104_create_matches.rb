class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.text :vg_id
      t.datetime :date
      t.integer :duration
      t.text :mode
      t.text :end_reason

      t.timestamps
    end
  end
end

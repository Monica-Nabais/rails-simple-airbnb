class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :oponent
      t.string :city
      t.string :competition
      t.integer :price
      t.date :game_day

      t.timestamps
    end
  end
end

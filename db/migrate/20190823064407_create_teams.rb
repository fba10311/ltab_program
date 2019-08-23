class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :school_name
      t.string :school_address
      t.integer :coach_id

      t.timestamps
    end
  end
end

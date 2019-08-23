class CreateTeamAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :team_assignments do |t|
      t.integer :bout_id
      t.integer :team_id

      t.timestamps
    end
  end
end

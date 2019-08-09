class CreateRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :rounds do |t|
      t.integer :bout_id
      t.integer :team_id
      t.integer :student_id
      t.time :time
      t.integer :score_1
      t.integer :score_2
      t.string :score_3
      t.integer :score_4
      t.integer :score_5

      t.timestamps
    end
  end
end

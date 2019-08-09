class Team < ApplicationRecord
  # Direct associations

  has_many   :rounds,
             :dependent => :destroy

  has_many   :team_assignments,
             :dependent => :destroy

  has_many   :students,
             :dependent => :destroy

  belongs_to :coach

  # Indirect associations

  # Validations

end

class Bout < ApplicationRecord
  # Direct associations

  has_many   :rounds,
             :dependent => :destroy

  has_many   :team_assignments,
             :dependent => :destroy

  belongs_to :level

  # Indirect associations

  has_many   :teams,
             :through => :team_assignments,
             :source => :team

  # Validations

end

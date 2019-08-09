class TeamAssignment < ApplicationRecord
  # Direct associations

  belongs_to :bout

  belongs_to :team

  # Indirect associations

  # Validations

end

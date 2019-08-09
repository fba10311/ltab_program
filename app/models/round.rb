class Round < ApplicationRecord
  # Direct associations

  belongs_to :student

  belongs_to :team

  # Indirect associations

  # Validations

end

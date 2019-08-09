class Student < ApplicationRecord
  # Direct associations

  has_many   :rounds,
             :dependent => :destroy

  belongs_to :team

  # Indirect associations

  # Validations

end

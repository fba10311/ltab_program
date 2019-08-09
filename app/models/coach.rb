class Coach < ApplicationRecord
  # Direct associations

  has_many   :teams,
             :dependent => :destroy

  # Indirect associations

  # Validations

end

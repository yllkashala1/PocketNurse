class Intake < ApplicationRecord
  belongs_to :medication
  validates :expected_intake, presence: true
  
end

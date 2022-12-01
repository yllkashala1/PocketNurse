class Medication < ApplicationRecord
  attr_accessor :intake_times, :interval

  belongs_to :user
end

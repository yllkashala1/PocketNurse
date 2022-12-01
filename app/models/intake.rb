class Intake < ApplicationRecord
  belongs_to :medication
  validates :expected_intake, presence: true

  scope :morning, ->(date) { where(expected_intake: DateTime.new(date.year, date.month, date.day, 6)..DateTime.new(date.year, date.month, date.day, 12)) }
  scope :afternoon, ->(date) { where(expected_intake: DateTime.new(date.year, date.month, date.day, 12)..DateTime.new(date.year, date.month, date.day, 18)) }
  scope :evening, ->(date) { where(expected_intake: DateTime.new(date.year, date.month, date.day, 18)..DateTime.new(date.year, date.month, date.day, 24)) }
end

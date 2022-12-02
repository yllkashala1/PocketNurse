class Intake < ApplicationRecord
  belongs_to :medication
  validates :expected_intake, presence: true

  scope :morning, ->(date) { where(expected_intake: DateTime.new(date.year, date.month, date.day, 5)..DateTime.new(date.year, date.month, date.day, 12)).order(:expected_intake) }
  scope :afternoon, ->(date) { where(expected_intake: DateTime.new(date.year, date.month, date.day, 12)..DateTime.new(date.year, date.month, date.day, 17)).order(:expected_intake) }
  scope :evening, ->(date) { where(expected_intake: DateTime.new(date.year, date.month, date.day, 17)..DateTime.new(date.year, date.month, date.day, 24)).order(:expected_intake) }
end

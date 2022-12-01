class Medication < ApplicationRecord
  attr_accessor :intake_times, :interval

  after_create :generate_intakes
  belongs_to :user
  has_many :intakes

  private

  def generate_intakes
    interval = self.interval # user imput from medication form
    start_date = self.start_date
    end_date = self.end_date # end_date user input inside klammern

    date = start_date
    while date <= end_date
      Intake.create(date_intake: date, medication: self)
      date += interval
    end
  end
end

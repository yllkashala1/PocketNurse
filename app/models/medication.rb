class Medication < ApplicationRecord
  attr_accessor :intake_times, :interval

  # after_create :generate_intakes
  belongs_to :user
  has_many :intakes

  # private

  def generate_intakes(interval, intake_times)
    start_date = self.start_date
    end_date = self.end_date # end_date user input inside klammern
    date = start_date
    while date <= end_date
      if interval.include?(Date::DAYNAMES[date.wday])
        intake_times.each do |intake_time|
          intake_time_of_day = DateTime.new(date.year, date.month, date.day, intake_time[0].to_i)
          Intake.create(expected_intake: intake_time_of_day, medication: self)
        end
      end
      date += 1.day
    end
  end
end

class Medication < ApplicationRecord
  attr_accessor :intake_times, :interval

  # after_create :generate_intakes
  belongs_to :user
  has_many :intakes, dependent: :destroy

  # private

  def generate_intakes(interval, intake_times)
    # interval => ["Monday", "Tuesday", "Thursday", "Saturday"]
    # intake_times => ["7:00am", "1:00pm", "7:00pm"]
    start_date = self.start_date # Fri, 02 Dec 2022
    end_date = self.end_date # end_date user input inside klammern # Mon, 05 Dec 2022
    date = start_date # Fri, 02 Dec 2022
    while date <= end_date
      if interval.include?(Date::DAYNAMES[date.wday])
        intake_times.each do |intake_time|
          # intake_time => "7:00am" "7:00pm"
          if intake_time[-2..] == "12:00pm"
            hour = 12
          elsif intake_time[-2..] == "am"
            hour = intake_time.split(":")[0].to_i
          else
            hour = intake_time.split(":")[0].to_i + 12
          end
          intake_time_of_day = DateTime.new(date.year, date.month, date.day, hour)
          raise
          Intake.create(expected_intake: intake_time_of_day, medication: self)
        end
      end
      date += 1.day
    end
  end
end

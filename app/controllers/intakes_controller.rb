class IntakesController < ApplicationController
  def index
    # There is a date in params
    if params[:date]
      numbers = params[:date].split("-").map(&:to_i)
      chosen_date = Date.new(numbers[0], numbers[1], numbers[2])
    end

    @selected_date = (chosen_date || Date.today)

    @morning_intakes = current_user.intakes.morning(@selected_date)
    @afternoon_intakes = current_user.intakes.afternoon(@selected_date)
    @evening_intakes = current_user.intakes.evening(@selected_date)
  end

  def month_calendar
    @intakes = Intake.where(
      start_time: Time.now.beginning_of_month.beginning_of_week..Time.now.end_of_month.end_of_week
    )
  end

end

class IntakesController < ApplicationController
  def index
    # There is a date in params
    if params[:date]
      raise
      numbers = params[:date].split("-").map(&:to_i)
      date = Date.new(params[:date])
      @morning_intakes = current_user.intakes.morning(date)
      @afternoon_intakes = current_user.intakes.afternoon(date)
      @evening_intakes = current_user.intakes.evening(date)
    # There isn't a date in params
    else
      @intakes = current_user.intakes.where(expected_intake: Date.today)
    end
  end

  def month_calendar
    @intakes = Intake.where(
      start_time: Time.now.beginning_of_month.beginning_of_week..Time.now.end_of_month.end_of_week
    )
  end
end

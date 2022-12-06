class IntakesController < ApplicationController
  def index
    # There is a date in params
    if params[:date]
      numbers = params[:date].split("-").map(&:to_i)
      date = Date.new(numbers[0], numbers[1], numbers[2])
      @morning_intakes = current_user.intakes.morning(date)
      @afternoon_intakes = current_user.intakes.afternoon(date)
      @evening_intakes = current_user.intakes.evening(date)
    # There isn't a date in params
    else
      today = Date.today
      @morning_intakes = current_user.intakes.morning(today)
      @afternoon_intakes = current_user.intakes.afternoon(today)
      @evening_intakes = current_user.intakes.evening(today)
    end
  end

  def month_calendar
    @intakes = Intake.where(
      start_time: Time.now.beginning_of_month.beginning_of_week..Time.now.end_of_month.end_of_week
    )
  end

  def update
    @completed_intake = Intake.find(params[:id])
    @completed_intake.toggle!(:complete)
    @completed_intake.save
    respond_to do |format|
      format.html { redirect_to intakes_path }
      format.text { render partial: "intakes/intake_card", locals: {intake: @completed_intake}, formats: [:html] }
    end
  end
end

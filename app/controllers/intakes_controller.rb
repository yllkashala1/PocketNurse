class IntakesController < ApplicationController
  def index
    # There is a date in params
    if params[:date]
      numbers = params[:date].split("-").map(&:to_i)
      @intakes = current_user.intakes.where(date_intake: Date.new(numbers[0], numbers[1], numbers[2]))
    # There isn't a date in params
    else
      @intakes = current_user.intakes.where(date_intake: Date.today)
    end
  end
end

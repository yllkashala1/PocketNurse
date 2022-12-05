class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @next_intake = Intake.all.order(:expected_intake).where(expected_intake: DateTime.now..).first
  end

end

class MedicationsController < ApplicationController
  def index
    @medications = Medication.all
  end

  def show
    @medication = Medication.find(params[:id])
  end
end

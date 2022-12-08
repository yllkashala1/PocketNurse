class MedicationsController < ApplicationController
  def index
    @medications = current_user.medications
  end

  def show
    @medication = Medication.find(params[:id])
  end

  def edit
    @medication = Medication.find(params[:id])
  end

  def update
    @medicatin = Medication.find(params[:id])
    @medication.update(medication_params)
    redirect_to medication_path(@medication)
  end

  def destroy
    @medication = Medication.find(params[:id])
    @medication.destroy
    redirect_to medications_path, status: :see_other
  end

  def new
    @medication = Medication.new
  end

  def create
    @medication = Medication.new(medication_params)
    @medication.user = current_user
    if @medication.save
      @medication.generate_intakes(params[:medication][:interval], params[:medication][:intake_times])
      redirect_to medication_path(@medication), notice: "Medication sucessfully created!"

    else
      render :new
    end
  end

  private

  def medication_params
    params.require(:medication).permit(:name, :start_date, :end_date, :dose, :comment)
  end
end

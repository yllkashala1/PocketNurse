class MedicationsController < ApplicationController
  def index
    @medications = Medication.all
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
    raise
    @medication = Medication.new(medication_params)
    @medication.user = current_user
    if @medication.save
      redirect_to medication_path(@medication)
    else
      render :new
    end
  end

  private

  def medication_params
    params.require(:medication).permit(:name, :start_date, :end_date, :dose)
  end
end

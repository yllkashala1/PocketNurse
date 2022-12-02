class RemoveIntervalFromMedications < ActiveRecord::Migration[7.0]
  def change
  remove_column :medications, :intake_times
  end
end

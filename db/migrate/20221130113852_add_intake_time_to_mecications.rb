class AddIntakeTimeToMecications < ActiveRecord::Migration[7.0]
  def change
    add_column :medications, :intake_times, :string
  end
end

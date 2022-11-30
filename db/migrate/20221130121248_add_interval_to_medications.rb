class AddIntervalToMedications < ActiveRecord::Migration[7.0]
  def change
    add_column :medications, :interval, :integer
  end
end

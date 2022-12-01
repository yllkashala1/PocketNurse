class ChangeDateToBeDatetimeInIntakes < ActiveRecord::Migration[7.0]
  def change
    remove_column :intakes, :date_intake
    add_column :intakes, :date_intake, :datetime
  end
end

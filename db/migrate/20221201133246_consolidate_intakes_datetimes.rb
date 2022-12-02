class ConsolidateIntakesDatetimes < ActiveRecord::Migration[7.0]
  def change
    remove_column :intakes, :time_of_intake
    remove_column :intakes, :date_intake
    add_column :intakes, :expected_intake, :datetime
  end
end

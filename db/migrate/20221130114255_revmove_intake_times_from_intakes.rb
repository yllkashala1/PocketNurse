class RevmoveIntakeTimesFromIntakes < ActiveRecord::Migration[7.0]
  def change
    remove_column :intakes, :intake_time, :string
    add_column :intakes, :date_intake, :string
  end
end

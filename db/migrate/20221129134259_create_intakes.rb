class CreateIntakes < ActiveRecord::Migration[7.0]
  def change
    create_table :intakes do |t|
      t.time :intake_time
      t.boolean :complete
      t.references :medication, null: false, foreign_key: true

      t.timestamps
    end
  end
end

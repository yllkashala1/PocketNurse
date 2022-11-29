class CreateMedications < ActiveRecord::Migration[7.0]
  def change
    create_table :medications do |t|
      t.date :start_date
      t.string :dose
      t.date :end_date
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

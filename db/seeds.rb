# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Medication.destroy_all && User.destroy_all

ms_von_braun = User.create!(
  email: "von_braun@gmail.com",
  password: "secret",
  password_confirmation: "secret"
)

aspirin = Medication.create!(
  name: "Aspirin",
  start_date: Date.new(2022, 11, 15),
  end_date: Date.new(2022, 11, 18),
  dose: "1 Tab",
  user: ms_von_braun
)

ibuprofen = Medication.create!(
  name: "Ibuprofen",
  start_date: Date.new(2022, 11, 15),
  end_date: Date.new(2022, 11, 18),
  dose: "400mg",
  user: ms_von_braun
)

multivitamin = Medication.create!(
  name: "Multivitamin",
  start_date: Date.new(2022, 11, 15),
  end_date: Date.new(2022, 11, 18),
  dose: "2 Tabs",
  user: ms_von_braun
)

magnesium = Medication.create!(
  name: "Magnesium",
  start_date: Date.new(2022, 11, 15),
  end_date: Date.new(2022, 11, 18),
  dose: "1 Sachet",
  user: ms_von_braun
)

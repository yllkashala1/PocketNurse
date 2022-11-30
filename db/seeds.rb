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

calcium = Medication.create!(
  name: "Calcium",
  start_date: Date.new(2022, 11, 15),
  end_date: Date.new(2022, 11, 18),
  dose: "1 Sachet",
  user: ms_von_braun)

vitamind = Medication.create!(
  name: "Vitamin D",
  start_date: Date.new(2022, 11, 15),
  end_date: Date.new(2022, 11, 18),
  dose: "1 Sachet",
  user: ms_von_braun)

vitaminb = Medication.create!(
  name: "Vitamin B",
  start_date: Date.new(2022, 11, 15),
  end_date: Date.new(2022, 11, 18),
  dose: "1 Sachet",
  user: ms_von_braun)

antibiotika = Medication.create!(
  name: "Antibiotika",
  start_date: Date.new(2022, 12, 15),
  end_date: Date.new(2022, 12, 18),
  dose: "2 Tab",
  user: ms_von_braun)

vitaminc = Medication.create!(
  name: "Vitamin C",
  start_date: Date.new(2022, 12, 10),
  end_date: Date.new(2023, 01, 10),
  dose: "1 Tab",
  user: ms_von_braun
)

diclofenac = Medication.create!(
  name: "Diclofenac",
  start_date: Date.new(2022,12,25),
  end_date: Date.new(2022, 12, 30),
  dose: "2 Tab",
  user: ms_von_braun
)

naproxen = Medication.create!(
  name: "Naproxen",
  start_date: Date.new(2022, 12, 26),
  end_date: Date.new(2022, 12, 31),
  dose: "2 Tab",
  user: ms_von_braun
)

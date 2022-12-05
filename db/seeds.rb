# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Intake.destroy_all && Medication.destroy_all && User.destroy_all

interval = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
intake_times = [
  "1:00am", "2:00am", "3:00am", "4:00am", "5:00am", "6:00am", "7:00am", "8:00am", "9:00am", "10:00am", "11:00am",
  "1:00pm", "2:00pm", "3:00pm", "4:00pm", "5:00pm", "6:00pm", "7:00pm", "8:00pm", "9:00pm", "10:00pm", "11:00pm"
]

ms_von_braun = User.create!(
  email: “von_braun@gmail.com”,
  password: “secret”,
  password_confirmation: “secret”
)

aspirin = Medication.create!(
  name: “Aspirin”,
  start_date: Date.new(2022, 11, 15),
  end_date: Date.new(2022, 11, 18),
  dose: “1 Tab”,
  user: ms_von_braun
)

ibuprofen = Medication.create!(
  name: “Ibuprofen”,
  start_date: Date.new(2022, 11, 15),
  end_date: Date.new(2022, 11, 18),
  dose: “400mg”,
  user: ms_von_braun
)

multivitamin = Medication.create!(
  name: “Multivitamin”,
  start_date: Date.new(2022, 11, 15),
  end_date: Date.new(2022, 11, 18),
  dose: “2 Tabs”,
  user: ms_von_braun
)

magnesium = Medication.create!(
  name: “Magnesium”,
  start_date: Date.new(2022, 11, 15),
  end_date: Date.new(2022, 11, 18),
  dose: “1 Sachet”,
  user: ms_von_braun
)

calcium = Medication.create!(
  name: “Calcium”,
  start_date: Date.new(2022, 11, 15),
  end_date: Date.new(2022, 11, 18),
  dose: “1 Sachet”,
  user: ms_von_braun)

vitamind = Medication.create!(
  name: “Vitamin D”,
  start_date: Date.new(2022, 11, 15),
  end_date: Date.new(2022, 11, 18),
  dose: “1 Sachet”,
  user: ms_von_braun)

vitaminb = Medication.create!(
  name: “Vitamin B”,
  start_date: Date.new(2022, 11, 15),
  end_date: Date.new(2022, 11, 18),
  dose: “1 Sachet”,
  user: ms_von_braun)

antibiotika = Medication.create!(
  name: “Antibiotika”,
  start_date: Date.new(2022, 12, 15),
  end_date: Date.new(2022, 12, 18),
  dose: “2 Tab”,
  user: ms_von_braun
)

vitaminc = Medication.create!(
  name: “Vitamin C”,
  start_date: Date.new(2022, 12, 10),
  end_date: Date.new(2023, 01, 10),
  dose: “1 Tab”,
  user: ms_von_braun
)


aspirin.generate_intakes(interval.sample(rand(1..3)), intake_times.sample(rand(1..3)))
ibuprofen.generate_intakes(interval.sample(rand(1..3)), intake_times.sample(rand(1..3)))
multivitamin.generate_intakes(interval.sample(rand(1..3)), intake_times.sample(rand(1..3)))
magnesium.generate_intakes(interval.sample(rand(1..3)), intake_times.sample(rand(1..3)))
calcium.generate_intakes(interval.sample(rand(1..3)), intake_times.sample(rand(1..3)))
vitamind.generate_intakes(interval.sample(rand(1..3)), intake_times.sample(rand(1..3)))
vitaminb.generate_intakes(interval.sample(rand(1..3)), intake_times.sample(rand(1..3)))
antibiotika.generate_intakes(interval.sample(rand(1..3)), intake_times.sample(rand(1..3)))
vitaminc.generate_intakes(interval.sample(rand(1..3)), intake_times.sample(rand(1..3)))


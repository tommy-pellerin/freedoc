# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'
# 10.times do |i|
#   doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: Faker::Superhero.power, zip_code: Faker::Address.zip_code)
# end

# 100.times do |i|
#   patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)  
# end

# doctors = Doctor.all
# patients = Patient.all

# 200.times do
#   random_doctor_index = Random.new.rand(doctors.length)
#   random_patient_index = Random.new.rand(patients.length)
#   appointment = Appointment.create!(date: Faker::Date.between(from: '2024-02-01', to: '2024-02-29'), doctor: doctors[random_doctor_index.to_i], patient: patients[random_patient_index.to_i])
  
# end
appointments = Appointment.all
100.times do
  ap = appointments.sample
  city = City.create!(name: Faker::Address.city, doctor: ap.doctor ,patient: ap.patient, appointment: ap) 
end

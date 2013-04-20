require_relative '../app/models/teacher'
require 'faker'

def seed_teachers
  9.times do |t|
    p Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
  end
end

seed_teachers

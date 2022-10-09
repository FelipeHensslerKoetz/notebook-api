# frozen_string_literal: true

namespace :dev do
  desc 'Setup the develpment environment'
  task setup: :environment do
    100.times do |_i|
      Contact.create(name: Faker::Name.name,
                     email: Faker::Internet.email,
                     birthdate: Faker::Date.between(from: 35.years.ago, to: 18.years.ago))
    end
  end
end

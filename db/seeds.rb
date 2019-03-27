puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

10.times do
  Restaurant.create!(
    name: Faker::Hipster.word,
    address: Faker::Address.street_address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code
  )
end

puts "Created #{Restaurant.count} restaurants"

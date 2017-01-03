1000.times do |i|
  Apartment.create!(
    address_line1: "#{[nil, 'Unit', 'Flat', 'Apartment'].sample} #{Faker::Number.between(1, 24)}0#{Faker::Number.between(1, 9)}",
    address_line2: Faker::Address.street_address,
    bedrooms: Faker::Number.between(1, 4),
    bathrooms: Faker::Number.between(1, 3),
    parking: Faker::Boolean.boolean,
    gym: Faker::Boolean.boolean,
    price: Faker::Number.between(300_000, 900_000),
    address_suburb: Faker::Address.city,
    address_postcode: Faker::Number.between(2000, 5000),
    address_state: ['VIC', 'NSW', 'QLD', 'TAS', 'WA', 'SA'].sample,
    description: Faker::Hipster.paragraph(Faker::Number.between(1, 5))
  )
end

puts "🌱 Seeding spices..."

westlands = Region.create(name: "Westlands", county: "Kanairo")
eastlands = Region.create(name: "Eastlands", county: "Macha")
northlands = Region.create(name: "Northlands", county: "Githu")

westlands.parkings.create(name: "westi", lot_num: 5, county: "Kanairo")
westlands.parkings.create(name: "Waiyaki", lot_num: 6, county: "Kanairo")

eastlands.parkings.create(name: "junction", lot_num: 7, county: "Macha")
eastlands.parkings.create(name: "Dunda", lot_num: 7, county: "Macha")

northlands.parkings.create(name: "44", lot_num: 4, county: "Githu")
northlands.parkings.create(name: "45", lot_num: 5, county: "Githu")
northlands.parkings.create(name: "46", lot_num: 6, county: "Githu")

User.create!(
  fullnames: 'John Doe',
  email: 'john@example.com',
  phonenumber: 123456789,
  password: 'password'
)

puts "✅ Done seeding!"


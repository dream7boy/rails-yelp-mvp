# db/seeds.rb
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Sukiya",
    address:      "1-11-1 Takadanobaba Shinjuku Tokyo",
    phone_number: "01 11 11 11 11",
    category:     "japanese"
  },
  {
    name:         "Matsuya",
    address:      "2-22-2 Somewhere Someku Tokyo",
    phone_number: "02 22 22 22 22",
    category:     "japanese"
  },
  {
    name:         "Yoshinoya",
    address:      "3-33-3 Kokodayo Kokoku Tokyo",
    phone_number: "03 33 33 33 33",
    category:     "japanese"
  },
  {
    name:         "Shasha",
    address:      "4-44-4 Musashi Musashiku Kanagawa",
    phone_number: "04 44 44 44 44",
    category:     "chinese"
  },
  {
    name:         "Shining star",
    address:      "1-28-4 Motosumi Motoku Kanagawa",
    phone_number: "05 55 55 55 55",
    category:     "italian"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

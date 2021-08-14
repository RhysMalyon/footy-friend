# League > Stadium > Team > Player
POSITION = %w[GK CB LB RB CDM CM CAM RW LW RM LM CF ST].freeze
LEAGUES = ["Champion League", "Diamond League", "Platinum League", "Gold League", "Silver League", "Bronze League"]
STADIA = ["Rhythm Park",
          "Element Stadium",
          "Moonlight Park",
          "Beacon Centre",
          "Onyx Stadium",
          "Burrow Field",
          "Bell Centre",
          "Gemstone Arena",
          "Vertex Ring",
          "Sapphire Field",
          "Phenomenon Bowl",
          "Omen Arena",
          "Halo Ground",
          "Harmony Ground",
          "Anomaly Centre",
          "Alabaster Ring",
          "Sanctum Bowl",
          "Mirage Stadium",
          "Aureole Stadium",
          "Pride Field"]

puts "Clearing leagues..."
League.destroy_all

puts "Populating league database..."
LEAGUES.each do |league|
  League.create!(
    name: league
  )
end
puts "Leagues populated!"

puts "Clearing stadia..."
Stadium.destroy_all

puts "Populating stadium database..."
STADIA.each do |stadium|
  Stadium.create!(
    name: stadium,
    capacity: rand(10000..60000),
    built: rand(1870..2010)
  )
end
puts "Stadia populated!"


puts "Populating team database..."
Stadium.find_each do |stadium|
  Team.create!(
    name: Faker::Sports::Football.unique.team,
    founded: rand(1880..2010),
    city: Faker::Nation.capital_city,
    league: League.all.sample,
    stadium: stadium
  )
end
puts "Teams populated!"

puts "Populating team database..."
Team.find_each do |team|
  11.times do
    Player.create!(
      first_name: Faker::Name.male_first_name,
      last_name: Faker::Name.last_name ,
      age: rand(14..45),
      nationality: Faker::Nation.nationality,
      position: POSITION.sample,
      team: team
    )
  end
end
puts "Teams populated!"

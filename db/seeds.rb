# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Team.destroy_all

teams = [
  ['Real Madrid', 'Atletico', 'Madrid', 'Taça del Rey'],
  ['Bayern Munich', 'Barcelona', 'Munich', 'Champions League'],
  ['Sporting', 'SC Covilhã', 'Lisbon', 'Taça da Liga'],
  ['Roma', 'Liverpool', 'Rome', 'Europa League'],
  ['Paris SG', 'Nice', 'Paris', 'Ligue 1'],
  ['Barcelona', 'Rayo Vallecano', 'Barcelona', 'La Liga'],
  ['Chelsea', 'Tottenham', 'London', 'Premier League'],
  ['Manchester City', 'Manchester Utd', 'Manchester', 'Taça del Rey']
]

teams.each do |team|
  Team.create( name: team[0], oponent: team[1], city: team[2], competition: team[3], price: rand(50..500), game_day: Faker::Date.between(Date.today, 1.month.from_now))
end

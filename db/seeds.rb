# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

City.destroy_all

csv_text = File.read(Rails.root.join('lib', 'seeds', 'EnergyCSV.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  g = City.new
  g.city_name = row['city_name']
  g.state = row['state']
  g.us_city = row['us_city']
  g.population = row['population']
  g.one_hundred_pct_by = row['one_hundred_pct_by']
  g.co2_emissions_perannum = row['co2_emissions_perannum']
  g.wind = row['wind']
  g.solar = row['solar']
  g.other_energy_source = row['other_energy_source']
  g.save

  puts "#{g.city_name} saved"
end

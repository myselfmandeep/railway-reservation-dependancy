# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

tiers = [
  {"name"=>"1 Tier AC", "short_form"=>"1AC", "price_per_km"=>0.5e1},
  {"name"=>"2 Tier AC", "short_form"=>"2AC", "price_per_km"=>0.4e1},
  {"name"=>"3 Tier AC", "short_form"=>"3AC", "price_per_km"=>0.3e1},
  {"name"=>"Vistadome AC","short_form"=>"EV","price_per_km"=>0.25e1},
  {"name"=>"Anubhuti Class","short_form"=>"EA","price_per_km"=>0.21e1},
  {"name"=>"Executive Chair","short_form"=>"EC","price_per_km"=>0.17e1},
  {"name"=>"First Class","short_form"=>"FC","price_per_km"=>0.165e1},
  {"name"=>"3 AC Economy","short_form"=>"3E","price_per_km"=>0.12e1},
  {"name"=>"AC Chair Car","short_form"=>"CC","price_per_km"=>0.125e1},
  { "name"=>"Sleeper", "short_form"=>"SL", "price_per_km"=>0.9e0},
  {"name"=>"Second Sitting","short_form"=>"2S","price_per_km"=>0.75e0}
]

Tier.create!(tiers)
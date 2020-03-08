# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

raffles = ["Win a fancy dinner",
           "Win a kid’s toy",
           "Win a free bottle of perfume."]
raffles.each { |name| Raffle.create! name: name }

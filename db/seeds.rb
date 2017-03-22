# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

package = Package.create(name: "Suiça", description: "Lugar Legal")

year = Year.new(name: "2017")
year1 = Year.new(name: "2018")
year2 = Year.new(name: "2019")
year3 = Year.new(name: "2020")
year4 = Year.new(name: "2021")

year.package = package
year1.package = package
year2.package = package
year3.package = package
year4.package = package

year.save
year1.save
year2.save
year3.save
year4.save
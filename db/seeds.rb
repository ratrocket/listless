# This file should contain all the record creation needed to seed the
# database with its default values.
#
# The data can then be loaded with the rake db:seed (or created
# alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = [
  { name: 'Records' },
  { name: 'Bicycle' },
]

lists = [
  { name: 'considering' },
  { name: 'want available' },
  { name: 'want not yet available' },
  { name: 'no longer want' },
  { name: 'bought' },
]

Category.create(categories)
List.create(lists)

records = Category.find_by_slug('records')
List.all.each { |list| records.lists << list }

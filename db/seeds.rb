# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
SchoolClass.destroy_all

SchoolClass.create(title:"English", room_number: 4)
SchoolClass.create(title: "Spanish", room_number: 2)
SchoolClass.create(title: "Science", room_number: 10)
SchoolClass.create(title: "Food", room_number: 1)

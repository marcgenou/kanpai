# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Experience.delete_all
Experience.create!(title: 'NYC Marathon', category: 'sport', description: 'New York City Marathon', image_url: 'TCSNYCM14_Runners_01.JPG', price: 300, season: 'Autumn', date: '2015/11/1', duration: 'One day', tags: 'marathon, new york city, running', address: 'Statue of liberty, NY')
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
yelp = [
  ["bueno","sweet-dogs-miami"],
  ["good","cardon-y-el-tirano-miami"],
  ["good tacos","bianco-gelato-miami-2"]
]


Suggestion.create(body: "Ink 1",yelp_id: "the-sybarite-pig-boca-raton",users_name: "Paul Schroen",latitude: "26.36935",longitude: "-80.20259",menu_item: "dinner",users_city: "cincy",hashtags: "#rock #sock")

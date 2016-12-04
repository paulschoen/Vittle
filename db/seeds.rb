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


yelp.each do |body, yelp_id|
  Suggestion.create( body: body, yelp_id: yelp_id )
end

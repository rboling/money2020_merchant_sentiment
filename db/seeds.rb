# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# create the merchants for the demo

Merchant.create(name: 'Dinette Design', api_key: "VxzAVCJetvZl/weXnpWclwrVrRJ7+fDcjxvMCBg8fzE=", email: "na@na.com", bbb_accredited: false, bbb_rating: 1, feedzai_username: "robert-boling-1", feedzai_password: "Y8YF2C4gWm")
Merchant.create(name: 'Dinette Design', api_key: "r88gRhR/+nxTvSxdv9Te70blBlzSsSPb8ZYIjsGkjKs=", email: "na@na.com", bbb_accredited: true, bbb_rating: 13, feedzai_username: "robert-boling-2", feedzai_password: "vnrTayQMXu")

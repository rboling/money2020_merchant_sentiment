# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# create the merchants for the demo

#Merchant.create(name: 'Dinette Design', api_key: "VxzAVCJetvZl/weXnpWclwrVrRJ7+fDcjxvMCBg8fzE=", email: "na@na.com", bbb_accredited: false, bbb_rating: 1, feedzai_username: "robert-boling-1", feedzai_password: "Y8YF2C4gWm")
#Merchant.create(name: 'Hamilton\'s sofa gallery', api_key: "r88gRhR/+nxTvSxdv9Te70blBlzSsSPb8ZYIjsGkjKs=", email: "na@na.com", bbb_accredited: true, bbb_rating: 13, feedzai_username: "robert-boling-2", feedzai_password: "vnrTayQMXu")

# Merchant 1 payments
PendingPayment.create(amount: 12000, currency: "USD", country: "US", time: DateTime.now, merchant_id: 1, is_deleted: false)
PendingPayment.create(amount: 111000, currency: "USD", country: "US", time: DateTime.now, merchant_id: 1, is_deleted: false)
PendingPayment.create(amount: 234000, currency: "USD", country: "US", time: DateTime.now, merchant_id: 1, is_deleted: false)

# YelpReview.create(merchant_id: 1, stars: 1, review: "This place is a total nightmare!!!")
# YelpReview.create(merchant_id: 1, stars: 1, review: "Unfortunately, Mo and Damon have never been honest")

# Merchant 2 payments
PendingPayment.create(amount: 12000, currency: "USD", country: "US", time: DateTime.now, merchant_id: 2, is_deleted: false)
PendingPayment.create(amount: 111000, currency: "USD", country: "US", time: DateTime.now, merchant_id: 2, is_deleted: false)
PendingPayment.create(amount: 234000, currency: "USD", country: "US", time: DateTime.now, merchant_id: 2, is_deleted: false)

# YelpReview.create(merchant_id: 2, stars: 5, review: "very friendly and helpful customer service")
# YelpReview.create(merchant_id: 2, stars: 5, review: "What a find. Quality. And I mean quality furniture")

YelpReview.all.each do |yr| 
  yr.date = DateTime.now
  yr.save
end
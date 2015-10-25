class Merchant < ActiveRecord::Base
  has_many :pending_payments
  has_many :yelp_reviews

  def yelp_sum
  	self.yelp_reviews.map{|yr| yr.stars}.sum/self.yelp_reviews.count
  end

  def alphabetic_bbb_rating
  	case self.bbb_rating
  	when 13
  	  "A+"
  	when 12
  	  "A"
    when 11
      "A-"
    when 10
      "B+"
    when 9
      "B"
    when 8
      "B-"
    when 7
      "C+"
    when 6
      "C"
    when 5
      "C-"
    when 4
      "D+"
    when 3
      "D"
    when 2
      "D-"
    when 1
      "F"
    else
      "N/A"  
    end
  end
end

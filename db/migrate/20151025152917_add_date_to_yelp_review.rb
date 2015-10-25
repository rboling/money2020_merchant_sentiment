class AddDateToYelpReview < ActiveRecord::Migration
  def change
    add_column :yelp_reviews, :date, :date
  end
end

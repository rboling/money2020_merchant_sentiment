class AddbbbRatingToMerchant < ActiveRecord::Migration
  def change
  	add_column :merchants, :bbb_rating, :integer
  end
end

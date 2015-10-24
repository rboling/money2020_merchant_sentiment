class CreateYelpReviews < ActiveRecord::Migration
  def change
    create_table :yelp_reviews do |t|
      t.text :review
      t.integer :stars
      t.belongs_to :merchant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateAddReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :add_reviews do |t|
      t.string :class
      t.string :professor
      t.string :review
      t.string :user_id

      t.timestamps
    end
  end
end

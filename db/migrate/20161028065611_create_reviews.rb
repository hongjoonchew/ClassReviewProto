class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :review_id
      t.text :review
      t.string :email
      t.string :course_id
      t.string :professor

      t.timestamps
    end
  end
end

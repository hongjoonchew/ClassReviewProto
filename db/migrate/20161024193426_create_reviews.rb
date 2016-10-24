class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :review_id
      t.string :review
      t.string :email
      t.string :password
      t.string :course_id

      t.timestamps
    end
  end
end

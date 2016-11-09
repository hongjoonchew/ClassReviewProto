class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews, id:false do |t|
      t.string :review_id, primary_key:true
      t.text :review
      t.string :email
      t.string :professor
      add_foreign_key :courses ,:reviews, name: "course_id"

      t.timestamps
    end
  end
end

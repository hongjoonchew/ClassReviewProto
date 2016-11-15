class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews, id:false do |t|
      t.string :review_id, primary_key:true
      t.text :review
      t.string :email
      t.string :professor
      t.string :course_id

      t.timestamps
    end
	add_index :reviews, :course_id
  end
end

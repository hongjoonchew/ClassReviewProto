class AddReviewsToCourse < ActiveRecord::Migration[5.0]
  def change
	add_foreign_key :reviews, :courses, column: :course_id, primary_key: :course_id
	add_foreign_key :materials, :courses, column: :course_id, primary_key: :course_id
  end
end

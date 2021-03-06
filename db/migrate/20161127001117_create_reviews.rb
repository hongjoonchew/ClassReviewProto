class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :professor
      t.text :review
      t.float :rating
      t.references :course, foreign_key: true, type: :string

      t.timestamps
    end
	add_foreign_key :reviews, :courses, column: :course_id, primary_key: :course_id
  end
end

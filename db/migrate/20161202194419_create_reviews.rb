class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :professor
      t.text :review
      t.references :course_id, foreign_key: true

      t.timestamps
    end
  end
end

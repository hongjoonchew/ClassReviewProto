class CreateReviewConnectors < ActiveRecord::Migration[5.0]
  def change
    create_table :ReviewConnectors do |t|
	  t.string :course_id
	  t.string :review_id
      t.timestamps
    end
	
	add_index :reviewConnectors, :course_id
	add_index :reviewConnectors, :review_id
  end
end

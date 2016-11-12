class CreateReviewConnectors < ActiveRecord::Migration[5.0]
  def change
    create_table :review_connectors do |t|
	  t.string :course_id
	  t.string :review_id
      t.timestamps
    end
	
	add_index :review_connectors, :course_id
	add_index :review_connectors, :review_id
  end
end

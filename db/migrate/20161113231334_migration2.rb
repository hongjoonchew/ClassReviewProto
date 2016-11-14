class Migration2 < ActiveRecord::Migration[5.0]
  def change
	change_table :reviews do |t|
		t.string :course_id
	end
	add_foreign_key :courses ,:reviews, name: "course_id"
    add_index :reviews, :course_id
  end
end

class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses, id:false do |t|
      t.string :course_id ,primary_key:true
      t.text :description

      t.timestamps
    end
  end
end

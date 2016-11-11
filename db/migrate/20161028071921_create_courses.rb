class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses, id:false do |t|
      t.string :course_id, primary_key:true
      t.string :name
      t.text :description
      add_foreign_key :materials,:courses, name:"material_id"

      t.timestamps
    end
  end
end

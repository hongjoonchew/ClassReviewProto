class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :course_id
      t.string :name
      t.string :description
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end

class CreateMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :materials do |t|
      t.string :books
      t.string :Syllabus
      t.text :notes
      t.string :material_id
      t.string :professor
      t.string :course_id

      t.timestamps
    end
  end
end

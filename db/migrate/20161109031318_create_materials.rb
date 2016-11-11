class CreateMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :materials, id:false do |t|
      t.string :books
      t.string :Syllabus
      t.text :notes
      t.string :material_id, primary_key:true
      t.string :professor
      add_foreign_key :courses ,:materials, name: "course_id"

      t.timestamps
    end
  end
end

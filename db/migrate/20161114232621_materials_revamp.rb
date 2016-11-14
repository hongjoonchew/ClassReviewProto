class MaterialsRevamp < ActiveRecord::Migration[5.0]
  def change
  change_table :materials do |t|
	  t.string :course_id
	  t.string :syllabus_id
	  t.string :ISBN
	  t.string :note_id
	end
	add_foreign_key :courses ,:materials, name: "course_id"
	add_foreign_key :syllabis, :materials, name: "syllabus_id"
	add_foreign_key :books, :materials, name: "ISBN"
	add_foreign_key :notes, :materials, name: "note_id"
	add_index :materials, :course_id
	add_index :materials, :syllabus_id
	add_index :materials, :ISBN
	add_index :materials, :note_id
  end
end

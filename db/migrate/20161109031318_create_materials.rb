class CreateMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :materials, id:false do |t|
      t.string :books
      t.string :Syllabus
      t.text :notes
      t.string :material_id, primary_key:true
      t.string :professor

      t.timestamps
    end
    add_reference :materials,:course,type: :string
    add_reference :materials,:book,type: :string
    add_reference :materials,:note, type: :string
    add_reference :materials,:syllabi,type: :string
    add_foreign_key :courses ,:materials
    add_foreign_key :books,:materials
    add_foreign_key :notes,:materials
    add_foreign_key :syllabis,:materials
  end
end

class CreateSyllabis < ActiveRecord::Migration[5.0]
  def change
    create_table :syllabis, id:false do |t|
      t.string :syllabus_id, primary_key:true
      t.string :syllabus_title
      add_foreign_key :materials,:syllabis, name:"material_id"

      t.timestamps
    end
  end
end

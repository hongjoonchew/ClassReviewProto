class CreateSyllabis < ActiveRecord::Migration[5.0]
  def change
    create_table :syllabis, id:false do |t|
      t.string :syllabus_id, primary_key:true
      t.string :syllabus_title

      t.timestamps
    end
    add_reference :syllabis, :material, type: :string
    add_foreign_key :syllabis, :materials
  end
end

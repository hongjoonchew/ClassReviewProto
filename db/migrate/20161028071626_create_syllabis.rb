class CreateSyllabis < ActiveRecord::Migration[5.0]
  def change
    create_table :syllabis do |t|
      t.string :syllabus_id
      t.string :syllabus_title
      t.string :material_id

      t.timestamps
    end
  end
end

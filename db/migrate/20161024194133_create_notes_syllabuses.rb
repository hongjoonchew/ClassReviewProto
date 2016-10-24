class CreateNotesSyllabuses < ActiveRecord::Migration[5.0]
  def change
    create_table :notes_syllabuses do |t|
      t.string :syllabus
      t.string :note_id

      t.timestamps
    end
  end
end

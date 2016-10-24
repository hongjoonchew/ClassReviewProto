class CreateNotesNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes_notes do |t|
      t.string :note
      t.string :note_id

      t.timestamps
    end
  end
end

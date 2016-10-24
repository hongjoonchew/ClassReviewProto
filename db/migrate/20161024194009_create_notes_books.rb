class CreateNotesBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :notes_books do |t|
      t.string :book
      t.string :note_id

      t.timestamps
    end
  end
end

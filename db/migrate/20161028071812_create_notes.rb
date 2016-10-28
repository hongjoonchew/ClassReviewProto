class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :note_id
      t.text :note
      t.string :material_id

      t.timestamps
    end
  end
end

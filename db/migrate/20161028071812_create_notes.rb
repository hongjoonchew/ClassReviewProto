class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes, id:false do |t|
      t.string :note_id, primary_key:true
      t.text :note

      t.timestamps
    end
    add_reference :notes, :material, type: :string
    add_foreign_key :notes, :materials
  end
end

class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes, id:false do |t|
      t.string :note_id, primary_key:true
      t.text :note
      add_foreign_key :materials,:notes, name:"material_id"

      t.timestamps
    end
  end
end

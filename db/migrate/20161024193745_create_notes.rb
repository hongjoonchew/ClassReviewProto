class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :note_id
      t.string :course_id
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end

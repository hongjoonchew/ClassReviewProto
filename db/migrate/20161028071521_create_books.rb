class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books, id:false do |t|
      t.string :ISBN, primary_key:true
      t.string :book_name
      add_foreign_key :materials,:books, name:"material_id"

      t.timestamps
    end
  end
end

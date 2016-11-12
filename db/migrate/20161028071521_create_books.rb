class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books, id:false do |t|
      t.string :ISBN, primary_key:true
      t.string :book_name

      t.timestamps
    end
    add_reference :books, :material, type: :string
    add_foreign_key :books, :materials
  end
end

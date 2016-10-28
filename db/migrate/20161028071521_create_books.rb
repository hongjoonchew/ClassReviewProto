class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :ISBN
      t.string :book_name
      t.string :material_id

      t.timestamps
    end
  end
end

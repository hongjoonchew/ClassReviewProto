class CreateMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :materials do |t|
	  t.integer :user_id
	  t.string :name
	  t.string :professor
	  t.string :apparatus
	  t.integer :ISBN
	  t.references :course, foreign_key: true, type: :string
		t.timestamps
	end
  end
end

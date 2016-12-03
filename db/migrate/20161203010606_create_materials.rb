class CreateMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :materials, id:false do |t|
	  t.string :materials_id, primary_key:true
		t.timestamps
	end
  end
end

class CreateHelps < ActiveRecord::Migration[5.0]
  def change
    create_table :helps, id:false do |t|
      t.string :help_id, primary_key:true
      t.text :question
      t.string :email

      t.timestamps
    end
  end
end

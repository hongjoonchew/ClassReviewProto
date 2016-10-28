class CreateHelps < ActiveRecord::Migration[5.0]
  def change
    create_table :helps do |t|
      t.string :help_id
      t.text :question
      t.string :email

      t.timestamps
    end
  end
end

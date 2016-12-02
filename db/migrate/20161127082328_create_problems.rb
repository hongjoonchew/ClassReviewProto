class CreateProblems < ActiveRecord::Migration[5.0]
  def change
    create_table :problems do |t|
      t.string :email, null:false
      t.text :problem, null:false

      t.timestamps
    end
  end
end

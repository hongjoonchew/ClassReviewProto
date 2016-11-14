class MigrationName < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :courses ,:reviews, name: "course_id"
    add_index :reviews, :course_id
  end
end

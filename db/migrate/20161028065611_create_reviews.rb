class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews, id:false do |t|
      t.string :review_id, primary_key:true
      t.text :review
      t.string :email
      t.string :professor

      t.timestamps
    end
      add_reference :reviews, :course, type: :string
      add_foreign_key :reviews, :courses
      add_reference :reviews, :user, type: :string
      add_foreign_key :reviews, :users
  end
end

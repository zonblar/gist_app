class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :content
      t.references :gist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

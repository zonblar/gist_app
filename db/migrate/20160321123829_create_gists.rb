class CreateGists < ActiveRecord::Migration
  def change
    create_table :gists do |t|
      t.string :name
      t.string :description
      t.string :content
      t.boolean :is_public, :default => true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

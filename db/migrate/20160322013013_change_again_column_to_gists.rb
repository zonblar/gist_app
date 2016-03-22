class ChangeAgainColumnToGists < ActiveRecord::Migration
  def change
    change_column :gists, :is_public, :boolean, :default => true
  end
end

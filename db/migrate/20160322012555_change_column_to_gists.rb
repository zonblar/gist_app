class ChangeColumnToGists < ActiveRecord::Migration
  def change
    change_column :gists, :is_public, :boolean, :default => false
  end
end

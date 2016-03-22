class ChangeColumnContentFromGists < ActiveRecord::Migration
  def change
    change_column :gists, :content, :string, :limit => 1000
  end
end

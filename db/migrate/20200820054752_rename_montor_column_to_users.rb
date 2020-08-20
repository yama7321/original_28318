class RenameMontorColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :montor, :mentor
  end
end

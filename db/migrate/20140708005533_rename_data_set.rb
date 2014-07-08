class RenameDataset < ActiveRecord::Migration
  def change
    rename_table :datasets, :datasets
  end
end

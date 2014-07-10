class RenameDataSet < ActiveRecord::Migration
  def change
    rename_table :data_sets, :datasets
  end
end

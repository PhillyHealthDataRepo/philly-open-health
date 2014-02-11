class CreateDataSets < ActiveRecord::Migration
  def change
    create_table :data_sets do |t|
      t.string :title
      t.text :description
      t.date :createdate

      t.timestamps
    end
  end
end

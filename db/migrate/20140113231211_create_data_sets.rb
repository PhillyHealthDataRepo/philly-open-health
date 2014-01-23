class CreateDataSets < ActiveRecord::Migration
  def change
    create_table :data_sets do |t|
      t.string :source
      t.string :name
      t.text :description
      t.date :publication_date
      t.date :collection_date

      t.timestamps
    end
  end
end

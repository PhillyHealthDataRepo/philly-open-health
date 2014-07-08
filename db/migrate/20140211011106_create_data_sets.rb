class CreateDatasets < ActiveRecord::Migration
  def change
    create_table :datasets do |t|
      t.string :title
      t.text :description
      t.date :createdate

      t.timestamps
    end
  end
end

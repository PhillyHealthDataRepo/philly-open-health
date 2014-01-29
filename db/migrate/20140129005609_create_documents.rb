class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.string :source
      t.date :publicationdate
      t.text :tags

      t.timestamps
    end
  end
end

class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.belongs_to :dataset, index: true
      t.string :url

      t.timestamps
    end
  end
end

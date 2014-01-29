class AddDocToDocument < ActiveRecord::Migration
  def self.up
    add_attachment :documents, :doc
  end

  def self.down
    remove_attachment :documents, :doc
  end
end

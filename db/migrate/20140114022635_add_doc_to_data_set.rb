class AddDocToDataSet < ActiveRecord::Migration
  def self.up
  	add_attachment :data_sets, :document
  end

  def self.down
  	add_attachment :data_sets, :document
  end
end

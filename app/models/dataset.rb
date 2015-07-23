# == Schema Information
#
# Table name: datasets
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  createdate  :date
#  created_at  :datetime
#  updated_at  :datetime
#

class Dataset < ActiveRecord::Base
  has_many :attachments
end

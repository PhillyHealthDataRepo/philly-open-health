# == Schema Information
#
# Table name: sources
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  homepageurl :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Source < ActiveRecord::Base
end

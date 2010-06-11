# == Schema Information
# Schema version: 20100611181230
#
# Table name: farmers
#
#  id                 :integer         not null, primary key
#  name               :string(255)
#  washing_station_id :integer
#  created_at         :datetime
#  updated_at         :datetime
#

class Farmer < ActiveRecord::Base
  belongs_to :washing_station
  has_many :farms, :dependent => :destroy
end

# == Schema Information
# Schema version: 20100611181230
#
# Table name: washing_stations
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  code       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class WashingStation < ActiveRecord::Base
  has_many :farmers
  
  validates_presence_of :name, :code  
  
  validates_format_of :code,
    :with	=> /[A-Z]{3}/, 
    :message => "must use three capital letters"
    
# Can probably accomplish the length check in the above regular expression, 
# but my mad regex skillz apparently aren't up to the task. So belt and suspenders time...

  validates_length_of :code, :is => 3

  validates_uniqueness_of :code, :case_sensitive => true
end

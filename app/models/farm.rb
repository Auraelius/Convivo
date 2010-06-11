

class Farm < ActiveRecord::Base
  belongs_to :organic_certifier		
	belongs_to :farmer
end

# == Schema Information
#
# Table name: farms
#
#  id                   :integer         not null, primary key
#  name                 :string(255)
#  organic              :boolean
#  latitude             :float
#  longitude            :float
#  altitude             :float
#  farmer_id            :integer
#  organic_certifier_id :integer
#  created_at           :datetime
#  updated_at           :datetime
#


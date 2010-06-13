

class Farm < ActiveRecord::Base
  belongs_to :organic_certifier		
	belongs_to :farmer

# A farm must have a farmer (altho the reverse is not true)	
  validates_presence_of :name, :farmer
  validates_associated :farmer

# Claiming that you are organic is not enough - you need to be certified organic. Thus, you need to specify
# the certifier if you claim to be organic.
# TODO: the controller should remove the certifier if the organic claim is removed (organic=>false), 
# but I'd like to check here to be sure. However, the validation appears to run prior to the certifier being removed
# so I need to figure this out.

  def validate
     errors.add_to_base "You must specify a certifier if your farm is organic." if organic and organic_certifier.blank?
  #   errors.add_to_base "You must not specify a certifier if your farm is not organic." if organic.blank? and organic_certifier
  end

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


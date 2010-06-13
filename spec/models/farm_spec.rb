# == Schema Information
# Schema version: 20100611181230
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

require 'spec_helper'

describe Farm do
  before(:each) do
    @valid_farmer_attributes = {
      :name => "value for farmer name",
    }
    @farmer=Farmer.create!(@valid_farmer_attributes)
    
    @valid_oc_attributes = {
      :name => "value for name",
      :code => "XXX"
    }
    @oc = OrganicCertifier.create!(@valid_oc_attributes)
    
    @valid_farm_attributes = {
      :name => "value for farm name",
      :farmer_id => @farmer.id,
      :organic_certifier_id => nil,
      :organic => false,
      :latitude => 1.5,
      :longitude => 1.5,
      :altitude => 1.5
    }

  end

  it "should create a new instance given valid attributes" do
    Farm.create!(@valid_farm_attributes)
  end
  
  it "should require a name" do
    no_name_farm = Farm.new(@valid_farm_attributes.merge(:name => ""))
    no_name_farm.should_not be_valid
  end
  
  it "should require a farmer" do
    no_name_farm = Farm.new(@valid_farm_attributes.merge(:farmer_id => nil))
    no_name_farm.should_not be_valid
  end
  
  it "should require an organic certifier if organic" do
    uncertified_organic_farm = Farm.new(@valid_farm_attributes.merge(:organic => true))
    uncertified_organic_farm.should_not be_valid   
  end
  
  # Need to sort out the interaction of the model validation and the controller actions that clean up the model during edits
  # it "should not allow an organic certifier if not organic" do
  #   not_organic_farm = Farm.new(@valid_farm_attributes.merge(
  #      :organic => false,
  #      :organic_certifier_id => @oc.id  
  #      ))
  #   not_organic_farm.should_not be_valid   
  # end

   
end

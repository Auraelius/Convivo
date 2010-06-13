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

require 'spec_helper'

describe Farmer do
  before(:each) do
    @valid_farmer_attributes = {
      :name => "value for name"
    }
  end

  it "should create a new instance given valid attributes" do
    Farmer.create!(@valid_farmer_attributes)
  end
  
  it "should require a name" do
    no_name_farmer = Farm.new(@valid_farmer_attributes.merge(:name => ""))
    no_name_farmer.should_not be_valid
  end
  
end

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
    @valid_attributes = {
      :name => "value for name",
      :organic => false,
      :latitude => 1.5,
      :longitude => 1.5,
      :altitude => 1.5
    }
  end

  it "should create a new instance given valid attributes" do
    Farm.create!(@valid_attributes)
  end
end

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

require 'spec_helper'

describe WashingStation do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :code => "value for code"
    }
  end

  it "should create a new instance given valid attributes" do
    WashingStation.create!(@valid_attributes)
  end
end

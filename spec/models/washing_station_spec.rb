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

=begin
  TODO check to make sure code validations work
=end

require 'spec_helper'

describe WashingStation do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :code => "XXX"
    }
  end

  it "should create a new instance given valid attributes" do
    WashingStation.create!(@valid_attributes)
  end
  
  it "should require a name" do
    no_name_washing_station = WashingStation.new(@valid_attributes.merge(:name => ""))
    no_name_washing_station.should_not be_valid
  end

  it "should require a code" do
    no_name_washing_station = WashingStation.new(@valid_attributes.merge(:code => ""))
    no_name_washing_station.should_not be_valid
  end
  
  it "should require a three character code" do
    no_name_washing_station = WashingStation.new(@valid_attributes.merge(:code => "X"))
    no_name_washing_station.should_not be_valid
    no_name_washing_station = WashingStation.new(@valid_attributes.merge(:code => "XX"))
    no_name_washing_station.should_not be_valid
    no_name_washing_station = WashingStation.new(@valid_attributes.merge(:code => "XXXX"))
    no_name_washing_station.should_not be_valid
    # TODO is it safe to assume other string lengths fail?
  end

  it "should require an uppercase code" do
    no_name_washing_station = WashingStation.new(@valid_attributes.merge(:code => "xxx"))
    no_name_washing_station.should_not be_valid
  end  
  
  
  
end

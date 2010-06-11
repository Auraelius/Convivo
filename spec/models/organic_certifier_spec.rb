# == Schema Information
# Schema version: 20100611181230
#
# Table name: organic_certifiers
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  code       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe OrganicCertifier do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :code => "value for code"
    }
  end

  it "should create a new instance given valid attributes" do
    OrganicCertifier.create!(@valid_attributes)
  end
end

require 'spec_helper'

describe "/washing_stations/show.html.erb" do
  include WashingStationsHelper
  before(:each) do
    assigns[:washing_station] = @washing_station = stub_model(WashingStation,
      :name => "value for name",
      :code => "value for code"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ code/)
  end
end

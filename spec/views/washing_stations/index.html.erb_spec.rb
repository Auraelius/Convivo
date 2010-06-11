require 'spec_helper'

describe "/washing_stations/index.html.erb" do
  include WashingStationsHelper

  before(:each) do
    assigns[:washing_stations] = [
      stub_model(WashingStation,
        :name => "value for name",
        :code => "value for code"
      ),
      stub_model(WashingStation,
        :name => "value for name",
        :code => "value for code"
      )
    ]
  end

  it "renders a list of washing_stations" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for code".to_s, 2)
  end
end

require 'spec_helper'

describe "/washing_stations/new.html.erb" do
  include WashingStationsHelper

  before(:each) do
    assigns[:washing_station] = stub_model(WashingStation,
      :new_record? => true,
      :name => "value for name",
      :code => "value for code"
    )
  end

  it "renders new washing_station form" do
    render

    response.should have_tag("form[action=?][method=post]", washing_stations_path) do
      with_tag("input#washing_station_name[name=?]", "washing_station[name]")
      with_tag("input#washing_station_code[name=?]", "washing_station[code]")
    end
  end
end

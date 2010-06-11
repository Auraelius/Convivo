require 'spec_helper'

describe "/washing_stations/edit.html.erb" do
  include WashingStationsHelper

  before(:each) do
    assigns[:washing_station] = @washing_station = stub_model(WashingStation,
      :new_record? => false,
      :name => "value for name",
      :code => "value for code"
    )
  end

  it "renders the edit washing_station form" do
    render

    response.should have_tag("form[action=#{washing_station_path(@washing_station)}][method=post]") do
      with_tag('input#washing_station_name[name=?]', "washing_station[name]")
      with_tag('input#washing_station_code[name=?]', "washing_station[code]")
    end
  end
end

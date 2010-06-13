require 'spec_helper'

describe "/farmers/edit.html.erb" do

  before(:each) do
    assigns[:farmer] = stub(Farmer, :name => "value for farmer name")
    assigns[:washing_stations]= [
      stub_model(WashingStation, :name => "washing_station name", :code => "XXX"),
      stub_model(WashingStation, :name => "washing_station name", :code => "XXX")
    ]
  
  end

  it "renders the edit farmer form" do

    render
    response.should have_tag("form[action=#{farmer_path(@farmer)}][method=post]") do
      with_tag('input#farmer_name[name=?]', "farmer[name]")
    end
  end
end

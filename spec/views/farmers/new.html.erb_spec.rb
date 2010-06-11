require 'spec_helper'

describe "/farmers/new.html.erb" do
  include FarmersHelper

  before(:each) do
    assigns[:farmer] = stub_model(Farmer,
      :new_record? => true,
      :name => "value for name"
    )
  end

  it "renders new farmer form" do
    render

    response.should have_tag("form[action=?][method=post]", farmers_path) do
      with_tag("input#farmer_name[name=?]", "farmer[name]")
    end
  end
end

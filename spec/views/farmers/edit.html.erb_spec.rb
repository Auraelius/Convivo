require 'spec_helper'

describe "/farmers/edit.html.erb" do
  include FarmersHelper

  before(:each) do
    assigns[:farmer] = @farmer = stub_model(Farmer,
      :new_record? => false,
      :name => "value for name"
    )
  end

  it "renders the edit farmer form" do
    render

    response.should have_tag("form[action=#{farmer_path(@farmer)}][method=post]") do
      with_tag('input#farmer_name[name=?]', "farmer[name]")
    end
  end
end

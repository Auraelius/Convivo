require 'spec_helper'

describe "/farmers/show.html.erb" do
  include FarmersHelper
  before(:each) do
    assigns[:farmer] = @farmer = stub_model(Farmer,
      :name => "value for name"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
  end
end

require 'spec_helper'

describe "/farmers/index.html.erb" do
  include FarmersHelper

  before(:each) do
    assigns[:farmers] = [
      stub_model(Farmer,
        :name => "value for name"
      ),
      stub_model(Farmer,
        :name => "value for name"
      )
    ]
  end

  it "renders a list of farmers" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
  end
end

require 'spec_helper'

describe "/organic_certifiers/index.html.erb" do
  include OrganicCertifiersHelper

  before(:each) do
    assigns[:organic_certifiers] = [
      stub_model(OrganicCertifier,
        :name => "value for name",
        :code => "value for code"
      ),
      stub_model(OrganicCertifier,
        :name => "value for name",
        :code => "value for code"
      )
    ]
  end

  it "renders a list of organic_certifiers" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for code".to_s, 2)
  end
end

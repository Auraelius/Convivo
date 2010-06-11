require 'spec_helper'

describe "/organic_certifiers/show.html.erb" do
  include OrganicCertifiersHelper
  before(:each) do
    assigns[:organic_certifier] = @organic_certifier = stub_model(OrganicCertifier,
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

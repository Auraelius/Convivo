require 'spec_helper'

describe "/organic_certifiers/new.html.erb" do
  include OrganicCertifiersHelper

  before(:each) do
    assigns[:organic_certifier] = stub_model(OrganicCertifier,
      :new_record? => true,
      :name => "value for name",
      :code => "value for code"
    )
  end

  it "renders new organic_certifier form" do
    render

    response.should have_tag("form[action=?][method=post]", organic_certifiers_path) do
      with_tag("input#organic_certifier_name[name=?]", "organic_certifier[name]")
      with_tag("input#organic_certifier_code[name=?]", "organic_certifier[code]")
    end
  end
end

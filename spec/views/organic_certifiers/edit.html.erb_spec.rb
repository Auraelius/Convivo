require 'spec_helper'

describe "/organic_certifiers/edit.html.erb" do
  include OrganicCertifiersHelper

  before(:each) do
    assigns[:organic_certifier] = @organic_certifier = stub_model(OrganicCertifier,
      :new_record? => false,
      :name => "value for name",
      :code => "value for code"
    )
  end

  it "renders the edit organic_certifier form" do
    render

    response.should have_tag("form[action=#{organic_certifier_path(@organic_certifier)}][method=post]") do
      with_tag('input#organic_certifier_name[name=?]', "organic_certifier[name]")
      with_tag('input#organic_certifier_code[name=?]', "organic_certifier[code]")
    end
  end
end

require 'rails_helper'

RSpec.describe "app_attributes/show", type: :view do
  before(:each) do
    @app_attribute = assign(:app_attribute, AppAttribute.create!(
      :name => "Name",
      :mandatory => false,
      :default_value => "Default Value",
      :attribute_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Default Value/)
    expect(rendered).to match(//)
  end
end

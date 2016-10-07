require 'rails_helper'

RSpec.describe "app_attributes/index", type: :view do
  before(:each) do
    assign(:app_attributes, [
      AppAttribute.create!(
        :name => "Name",
        :mandatory => false,
        :default_value => "Default Value",
        :attribute_type => nil
      ),
      AppAttribute.create!(
        :name => "Name",
        :mandatory => false,
        :default_value => "Default Value",
        :attribute_type => nil
      )
    ])
  end

  it "renders a list of app_attributes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Default Value".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

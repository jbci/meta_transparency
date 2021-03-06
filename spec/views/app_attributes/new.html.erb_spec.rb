require 'rails_helper'

RSpec.describe "app_attributes/new", type: :view do
  before(:each) do
    assign(:app_attribute, AppAttribute.new(
      :name => "MyString",
      :mandatory => false,
      :default_value => "MyString",
      :attribute_type => nil
    ))
  end

  it "renders new app_attribute form" do
    render

    assert_select "form[action=?][method=?]", app_attributes_path, "post" do

      assert_select "input#app_attribute_name[name=?]", "app_attribute[name]"

      assert_select "input#app_attribute_mandatory[name=?]", "app_attribute[mandatory]"

      assert_select "input#app_attribute_default_value[name=?]", "app_attribute[default_value]"

      assert_select "input#app_attribute_attribute_type_id[name=?]", "app_attribute[attribute_type_id]"
    end
  end
end

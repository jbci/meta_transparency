require 'rails_helper'

RSpec.describe "attribute_types/new", type: :view do
  before(:each) do
    assign(:attribute_type, AttributeType.new(
      :name => "MyString",
      :attr_type => "MyString"
    ))
  end

  it "renders new attribute_type form" do
    render

    assert_select "form[action=?][method=?]", attribute_types_path, "post" do

      assert_select "input#attribute_type_name[name=?]", "attribute_type[name]"

      assert_select "input#attribute_type_attr_type[name=?]", "attribute_type[attr_type]"
    end
  end
end

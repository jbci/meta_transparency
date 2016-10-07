require 'rails_helper'

RSpec.describe "attribute_types/edit", type: :view do
  before(:each) do
    @attribute_type = assign(:attribute_type, AttributeType.create!(
      :name => "MyString",
      :attr_type => "MyString"
    ))
  end

  it "renders the edit attribute_type form" do
    render

    assert_select "form[action=?][method=?]", attribute_type_path(@attribute_type), "post" do

      assert_select "input#attribute_type_name[name=?]", "attribute_type[name]"

      assert_select "input#attribute_type_attr_type[name=?]", "attribute_type[attr_type]"
    end
  end
end

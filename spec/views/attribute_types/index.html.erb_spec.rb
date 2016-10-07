require 'rails_helper'

RSpec.describe "attribute_types/index", type: :view do
  before(:each) do
    assign(:attribute_types, [
      AttributeType.create!(
        :name => "Name",
        :attr_type => "Attr Type"
      ),
      AttributeType.create!(
        :name => "Name",
        :attr_type => "Attr Type"
      )
    ])
  end

  it "renders a list of attribute_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Attr Type".to_s, :count => 2
  end
end

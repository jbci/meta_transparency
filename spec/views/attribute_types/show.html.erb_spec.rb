require 'rails_helper'

RSpec.describe "attribute_types/show", type: :view do
  before(:each) do
    @attribute_type = assign(:attribute_type, AttributeType.create!(
      :name => "Name",
      :attr_type => "Attr Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Attr Type/)
  end
end

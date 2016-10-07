require 'rails_helper'

RSpec.describe "model_types/show", type: :view do
  before(:each) do
    @model_type = assign(:model_type, ModelType.create!(
      :name => "Name",
      :config_model => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
  end
end

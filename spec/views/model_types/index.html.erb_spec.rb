require 'rails_helper'

RSpec.describe "model_types/index", type: :view do
  before(:each) do
    assign(:model_types, [
      ModelType.create!(
        :name => "Name",
        :config_model => false
      ),
      ModelType.create!(
        :name => "Name",
        :config_model => false
      )
    ])
  end

  it "renders a list of model_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

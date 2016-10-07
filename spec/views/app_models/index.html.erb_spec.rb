require 'rails_helper'

RSpec.describe "app_models/index", type: :view do
  before(:each) do
    assign(:app_models, [
      AppModel.create!(
        :name => "Name",
        :plural => "Plural",
        :main_model => false
      ),
      AppModel.create!(
        :name => "Name",
        :plural => "Plural",
        :main_model => false
      )
    ])
  end

  it "renders a list of app_models" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Plural".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

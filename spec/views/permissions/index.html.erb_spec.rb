require 'rails_helper'

RSpec.describe "permissions/index", type: :view do
  before(:each) do
    assign(:permissions, [
      Permission.create!(
        :user => nil,
        :app_model => nil
      ),
      Permission.create!(
        :user => nil,
        :app_model => nil
      )
    ])
  end

  it "renders a list of permissions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

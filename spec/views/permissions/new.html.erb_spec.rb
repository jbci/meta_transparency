require 'rails_helper'

RSpec.describe "permissions/new", type: :view do
  before(:each) do
    assign(:permission, Permission.new(
      :user => nil,
      :app_model => nil
    ))
  end

  it "renders new permission form" do
    render

    assert_select "form[action=?][method=?]", permissions_path, "post" do

      assert_select "input#permission_user_id[name=?]", "permission[user_id]"

      assert_select "input#permission_app_model_id[name=?]", "permission[app_model_id]"
    end
  end
end

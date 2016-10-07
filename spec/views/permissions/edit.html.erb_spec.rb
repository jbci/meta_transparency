require 'rails_helper'

RSpec.describe "permissions/edit", type: :view do
  before(:each) do
    @permission = assign(:permission, Permission.create!(
      :user => nil,
      :app_model => nil
    ))
  end

  it "renders the edit permission form" do
    render

    assert_select "form[action=?][method=?]", permission_path(@permission), "post" do

      assert_select "input#permission_user_id[name=?]", "permission[user_id]"

      assert_select "input#permission_app_model_id[name=?]", "permission[app_model_id]"
    end
  end
end

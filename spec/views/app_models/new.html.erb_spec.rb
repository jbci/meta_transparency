require 'rails_helper'

RSpec.describe "app_models/new", type: :view do
  before(:each) do
    assign(:app_model, AppModel.new(
      :name => "MyString",
      :plural => "MyString",
      :main_model => false
    ))
  end

  it "renders new app_model form" do
    render

    assert_select "form[action=?][method=?]", app_models_path, "post" do

      assert_select "input#app_model_name[name=?]", "app_model[name]"

      assert_select "input#app_model_plural[name=?]", "app_model[plural]"

      assert_select "input#app_model_main_model[name=?]", "app_model[main_model]"
    end
  end
end

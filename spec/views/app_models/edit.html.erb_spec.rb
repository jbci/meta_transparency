require 'rails_helper'

RSpec.describe "app_models/edit", type: :view do
  before(:each) do
    @app_model = assign(:app_model, AppModel.create!(
      :name => "MyString",
      :plural => "MyString",
      :main_model => false
    ))
  end

  it "renders the edit app_model form" do
    render

    assert_select "form[action=?][method=?]", app_model_path(@app_model), "post" do

      assert_select "input#app_model_name[name=?]", "app_model[name]"

      assert_select "input#app_model_plural[name=?]", "app_model[plural]"

      assert_select "input#app_model_main_model[name=?]", "app_model[main_model]"
    end
  end
end

require 'rails_helper'

RSpec.describe "model_types/new", type: :view do
  before(:each) do
    assign(:model_type, ModelType.new(
      :name => "MyString",
      :config_model => false
    ))
  end

  it "renders new model_type form" do
    render

    assert_select "form[action=?][method=?]", model_types_path, "post" do

      assert_select "input#model_type_name[name=?]", "model_type[name]"

      assert_select "input#model_type_config_model[name=?]", "model_type[config_model]"
    end
  end
end

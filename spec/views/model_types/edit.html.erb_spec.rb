require 'rails_helper'

RSpec.describe "model_types/edit", type: :view do
  before(:each) do
    @model_type = assign(:model_type, ModelType.create!(
      :name => "MyString",
      :config_model => false
    ))
  end

  it "renders the edit model_type form" do
    render

    assert_select "form[action=?][method=?]", model_type_path(@model_type), "post" do

      assert_select "input#model_type_name[name=?]", "model_type[name]"

      assert_select "input#model_type_config_model[name=?]", "model_type[config_model]"
    end
  end
end

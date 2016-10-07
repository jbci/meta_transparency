require 'rails_helper'

RSpec.describe "app_models/show", type: :view do
  before(:each) do
    @app_model = assign(:app_model, AppModel.create!(
      :name => "Name",
      :plural => "Plural",
      :main_model => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Plural/)
    expect(rendered).to match(/false/)
  end
end

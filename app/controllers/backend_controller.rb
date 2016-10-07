class BackendController < ApplicationController
  include Wicked::Wizard
  before_action :set_steps
  before_action :setup_wizard

  def show
    render_wizard
  end

  def update
    render_wizard
  end


  private
    def set_steps
      self.steps = ActiveRecord::Base.connection.tables.map{|x|x.classify.safe_constantize}.compact.map{|m| m.name.pluralize.underscore}
    end
end

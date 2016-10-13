class BackendController < ApplicationController
  include Wicked::Wizard
  before_action :set_steps
  before_action :setup_wizard

  #steps   :rata

  def show
    render_wizard
  end

  def update
    render_wizard
  end


  private
    def set_steps
      #AppModel.joins(:model_type).where(:model_types => {:config_model => false})
      p "listing backend views"
      puts Dir.glob("app/views/backend/*.erb").map{|step| step.split('/')[3].split('.')[0].to_sym}
      #self.steps = ActiveRecord::Base.connection.tables.map{|x|x.classify.safe_constantize}.compact.map{|m| m.name.pluralize.underscore} rescue nil
      self.steps = Dir.glob("app/views/backend/*.erb").map{|step| step.split('/')[3].split('.')[0].pluralize.to_sym}
      p self.steps

    end
end

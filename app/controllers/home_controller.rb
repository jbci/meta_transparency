class HomeController < ApplicationController
  before_action :authenticate_user!, only:[:user]
  before_action :authenticate_admin!, only:[:admin]

  def index

  end

  def admin
    Rails.application.eager_load!
    #ActiveRecord::Base.descendants
    #@models = ActiveRecord::Base.descendants.map(&:model_name).map{|m| m.plural}
    @models = ActiveRecord::Base.connection.tables.map{|x|x.classify.safe_constantize}.compact.map{|m| m.name.pluralize.underscore}
    @user_models = AppModel.joins(:model_type).where(:model_types => {:config_model => false})
    #@config_models = AppModel.where(ModelType.where(:config_model => true))
    @config_models = AppModel.joins(:model_type).where(:model_types => {:config_model => true})

  end

  def user

  end

end

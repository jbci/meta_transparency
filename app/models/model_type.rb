# == Schema Information
#
# Table name: model_types
#
#  id           :integer          not null, primary key
#  name         :string
#  config_model :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class ModelType < ApplicationRecord
  has_many :app_models

  def to_s
    self.name
  end 
end

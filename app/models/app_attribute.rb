# == Schema Information
#
# Table name: app_attributes
#
#  id                :integer          not null, primary key
#  name              :string
#  mandatory         :boolean
#  default_value     :string
#  attribute_type_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  app_model_id      :integer
#
# Indexes
#
#  index_app_attributes_on_app_model_id       (app_model_id)
#  index_app_attributes_on_attribute_type_id  (attribute_type_id)
#
# Foreign Keys
#
#  fk_rails_afe6fbfc77  (attribute_type_id => attribute_types.id)
#  fk_rails_e27efe0563  (app_model_id => app_models.id)
#

class AppAttribute < ApplicationRecord
  belongs_to :app_model
  belongs_to :attribute_type
end

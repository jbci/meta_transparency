# == Schema Information
#
# Table name: permissions
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  app_model_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_permissions_on_app_model_id  (app_model_id)
#  index_permissions_on_user_id       (user_id)
#
# Foreign Keys
#
#  fk_rails_79fdf988de  (app_model_id => app_models.id)
#  fk_rails_d9cfa3c257  (user_id => users.id)
#

class Permission < ApplicationRecord
  belongs_to :user
  belongs_to :app_model
end

# == Schema Information
#
# Table name: app_models
#
#  id            :integer          not null, primary key
#  name          :string
#  plural        :string
#  main_model    :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  model_type_id :integer
#
# Indexes
#
#  index_app_models_on_model_type_id  (model_type_id)
#
# Foreign Keys
#
#  fk_rails_f72ce6cff1  (model_type_id => model_types.id)
#

class AppModel < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name

  belongs_to :model_type

  has_many :app_attributes
  accepts_nested_attributes_for :app_attributes, allow_destroy: true

  def table_created?
    table_names = ActiveRecord::Base.connection.tables.map{|x|x.classify.safe_constantize}.compact.map{|m| m.name.pluralize.underscore}
    table_names.include? self.plural
  end

  def scaffold_command
    command = "rails generate scaffold " + self.name.humanize + " "
    self.app_attributes.each do |attribute|
      command = command + attribute.name + ":" + attribute.attribute_type.attr_type + " "
    end
    command
  end

  def to_s
    self.name
  end
end

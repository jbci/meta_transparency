# == Schema Information
#
# Table name: attribute_types
#
#  id         :integer          not null, primary key
#  name       :string
#  attr_type  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AttributeType < ApplicationRecord
end

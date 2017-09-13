# == Schema Information
#
# Table name: sections
#
#  id         :integer          not null, primary key
#  visable    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Section < ApplicationRecord
  has_many :items
  accepts_nested_attributes_for :items
end

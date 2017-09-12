# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  body       :string
#  completed  :boolean
#  priority   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  list_id    :integer
#

class Item < ApplicationRecord
  belongs_to :list
  belongs_to :section
end

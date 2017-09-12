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

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

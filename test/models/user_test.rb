# == Schema Information
#
# Table name: users
#
#  id           :bigint(8)        not null, primary key
#  username     :string
#  f_name       :string
#  l_name       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  chat_room_id :integer
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

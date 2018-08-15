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

class User < ApplicationRecord
  validates :username, :f_name, :l_name, presence: true

  has_many :messages
  has_many :chat_rooms 
end

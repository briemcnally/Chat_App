# == Schema Information
#
# Table name: chat_rooms
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  user_id    :bigint(8)
#  message_id :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ChatRoom < ApplicationRecord
  has_many :users
  has_many :messages
end

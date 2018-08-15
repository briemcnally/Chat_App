# == Schema Information
#
# Table name: messages
#
#  id           :bigint(8)        not null, primary key
#  body         :text
#  user_id      :bigint(8)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  chat_room_id :integer
#

class Message < ApplicationRecord
  belongs_to :user
  has_one :chat_room 
end

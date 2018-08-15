class MessageController < ApplicationController
  def create
    @message = Message.new(message_params)
    @message.save!
  end

  private
  def message_params
    params.require(:message).permit(:body, :user_id, :chat_room_id)
  end
end

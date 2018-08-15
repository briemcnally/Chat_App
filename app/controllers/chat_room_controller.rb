class ChatRoomController < ApplicationController
  def create
    @chat_room = ChatRoom.new(chat_room_params)
    @chat_room.save!
    render :show
  end

  def index
    @chat_rooms = ChatRoom.all
    render :index
  end

  def show
    @chat_room = ChatRoom.find_by_id(params[:id])
    @messages = @chat_room.messages
    render :show
  end

  private

  def chat_room_params
    params.require(:chat_room).permit(:title)
  end
end

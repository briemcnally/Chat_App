json.extract! @chat_room, :title
json.array! @messages do |message|
  json.body message.body
  json.username message.user.username
end

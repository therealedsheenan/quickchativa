class ChatChannel < ApplicationCable::Channel

  def subscribed
    # stream_from "chat_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    # p 'speak is triggered'
    # p data['message']
    # Chat.create! message: "test1", room_id: 1, user_id: 1
  end

end
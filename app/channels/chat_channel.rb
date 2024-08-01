class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from(get_unique_identifier)
  end

  def unsubscribed
    stop_stream_from(get_unique_identifier)
  end

  def receive(data)
    ActionCable.server.broadcast(get_unique_identifier, data)
  end

  private

  def get_unique_identifier
    "chat_#{params[:chat_id]}"
  end

end

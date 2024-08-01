module V1
  class Messages < Grape::API

    post :broadcast_message do
      uniqueChannel = "chat_#{params[:chat_id]}"
      payload       = {message: params[:body]}

      ActionCable.server.broadcast(uniqueChannel, payload)
    end
    
    get "home" do
      {page: "this is homepage"}
    end

  end
end

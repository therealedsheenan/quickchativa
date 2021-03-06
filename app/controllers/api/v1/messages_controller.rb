class Api::V1::MessagesController < ApplicationController
  skip_before_action :authenticate_request

  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = @conversation.messages.build(message_params)
    @message.save!

    @path = api_v1_conversation_path(@conversation)
  end

  private

  def message_params
    params.permit(:body, :user_id, :convesation_id)
  end
end

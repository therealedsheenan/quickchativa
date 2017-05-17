class Api::V1::ChatsController < ApplicationController
  before_action :set_api_v1_chat, only: [:show, :update, :destroy]

  # GET /api/v1/chats
  def index
    @api_v1_chats = Api::V1::Chat.all

    render json: @api_v1_chats
  end

  # GET /api/v1/chats/1
  def show
    render json: @api_v1_chat
  end

  # POST /api/v1/chats
  def create
    @api_v1_chat = Api::V1::Chat.new(api_v1_chat_params)

    if @api_v1_chat.save
      render json: @api_v1_chat, status: :created, location: @api_v1_chat
    else
      render json: @api_v1_chat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/chats/1
  def update
    if @api_v1_chat.update(api_v1_chat_params)
      render json: @api_v1_chat
    else
      render json: @api_v1_chat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/chats/1
  def destroy
    @api_v1_chat.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_chat
      @api_v1_chat = Api::V1::Chat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def api_v1_chat_params
      params.require(:api_v1_chat).permit(:user_id, :message, :room_id)
    end
end

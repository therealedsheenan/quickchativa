require 'test_helper'

class Api::V1::ChatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chat = chats(:one)
  end

  test "should get index" do
    get api_v1_chats_url, as: :json
    assert_response 401
  end

  test "should show api_v1_chat" do
    get api_v1_chat_url(@chat), as: :json
    assert_response 401
  end

  test "should update api_v1_chat" do
    patch api_v1_chat_url(@chat), params: { api_v1_chat: { message: @chat.message, room_id: @chat.room_id, user_id: @chat.user_id } }, as: :json
    assert_response 401
  end
end

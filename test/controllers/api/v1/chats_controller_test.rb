require 'test_helper'

class Api::V1::ChatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_chat = api_v1_chats(:one)
  end

  test "should get index" do
    get api_v1_chats_url, as: :json
    assert_response :success
  end

  test "should create api_v1_chat" do
    assert_difference('Api::V1::Chat.count') do
      post api_v1_chats_url, params: { api_v1_chat: { message: @api_v1_chat.message, room_id: @api_v1_chat.room_id, user_id: @api_v1_chat.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_chat" do
    get api_v1_chat_url(@api_v1_chat), as: :json
    assert_response :success
  end

  test "should update api_v1_chat" do
    patch api_v1_chat_url(@api_v1_chat), params: { api_v1_chat: { message: @api_v1_chat.message, room_id: @api_v1_chat.room_id, user_id: @api_v1_chat.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_chat" do
    assert_difference('Api::V1::Chat.count', -1) do
      delete api_v1_chat_url(@api_v1_chat), as: :json
    end

    assert_response 204
  end
end

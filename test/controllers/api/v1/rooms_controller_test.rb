require 'test_helper'

class Api::V1::RoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room = rooms(:one)
  end

  test "should get index" do
    get api_v1_rooms_url, as: :json
    assert_response 401
  end

  test "should show api_v1_room" do
    get api_v1_room_url(@room), as: :json
    assert_response 401
  end

  test "should update api_v1_room" do
    patch api_v1_room_url(@room), params: { api_v1_room: { name: @room.name } }, as: :json
    assert_response 401
  end

end

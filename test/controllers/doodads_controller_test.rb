require "test_helper"

class DoodadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doodad = doodads(:one)
  end

  test "should get index" do
    get doodads_url, as: :json
    assert_response :success
  end

  test "should create doodad" do
    assert_difference("Doodad.count") do
      post doodads_url, params: { doodad: { color: @doodad.color, name: @doodad.name } }, as: :json
    end

    assert_response :created
  end

  test "should show doodad" do
    get doodad_url(@doodad), as: :json
    assert_response :success
  end

  test "should update doodad" do
    patch doodad_url(@doodad), params: { doodad: { color: @doodad.color, name: @doodad.name } }, as: :json
    assert_response :success
  end

  test "should destroy doodad" do
    assert_difference("Doodad.count", -1) do
      delete doodad_url(@doodad), as: :json
    end

    assert_response :no_content
  end
end

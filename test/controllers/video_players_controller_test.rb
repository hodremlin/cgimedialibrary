require 'test_helper'

class VideoPlayersControllerTest < ActionController::TestCase
  setup do
    @video_player = video_players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:video_players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create video_player" do
    assert_difference('VideoPlayer.count') do
      post :create, video_player: { published_at: @video_player.published_at, title: @video_player.title }
    end

    assert_redirected_to video_player_path(assigns(:video_player))
  end

  test "should show video_player" do
    get :show, id: @video_player
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @video_player
    assert_response :success
  end

  test "should update video_player" do
    patch :update, id: @video_player, video_player: { published_at: @video_player.published_at, title: @video_player.title }
    assert_redirected_to video_player_path(assigns(:video_player))
  end

  test "should destroy video_player" do
    assert_difference('VideoPlayer.count', -1) do
      delete :destroy, id: @video_player
    end

    assert_redirected_to video_players_path
  end
end

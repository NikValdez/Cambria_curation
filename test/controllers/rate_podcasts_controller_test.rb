require 'test_helper'

class RatePodcastsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rate_podcast = rate_podcasts(:one)
  end

  test "should get index" do
    get rate_podcasts_url
    assert_response :success
  end

  test "should get new" do
    get new_rate_podcast_url
    assert_response :success
  end

  test "should create rate_podcast" do
    assert_difference('RatePodcast.count') do
      post rate_podcasts_url, params: { rate_podcast: { name: @rate_podcast.name, rating: @rate_podcast.rating } }
    end

    assert_redirected_to rate_podcast_url(RatePodcast.last)
  end

  test "should show rate_podcast" do
    get rate_podcast_url(@rate_podcast)
    assert_response :success
  end

  test "should get edit" do
    get edit_rate_podcast_url(@rate_podcast)
    assert_response :success
  end

  test "should update rate_podcast" do
    patch rate_podcast_url(@rate_podcast), params: { rate_podcast: { name: @rate_podcast.name, rating: @rate_podcast.rating } }
    assert_redirected_to rate_podcast_url(@rate_podcast)
  end

  test "should destroy rate_podcast" do
    assert_difference('RatePodcast.count', -1) do
      delete rate_podcast_url(@rate_podcast)
    end

    assert_redirected_to rate_podcasts_url
  end
end

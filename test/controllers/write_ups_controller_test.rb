require 'test_helper'

class WriteUpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @write_up = write_ups(:one)
  end

  test "should get index" do
    get write_ups_url
    assert_response :success
  end

  test "should get new" do
    get new_write_up_url
    assert_response :success
  end

  test "should create write_up" do
    assert_difference('WriteUp.count') do
      post write_ups_url, params: { write_up: { content: @write_up.content, title: @write_up.title } }
    end

    assert_redirected_to write_up_url(WriteUp.last)
  end

  test "should show write_up" do
    get write_up_url(@write_up)
    assert_response :success
  end

  test "should get edit" do
    get edit_write_up_url(@write_up)
    assert_response :success
  end

  test "should update write_up" do
    patch write_up_url(@write_up), params: { write_up: { content: @write_up.content, title: @write_up.title } }
    assert_redirected_to write_up_url(@write_up)
  end

  test "should destroy write_up" do
    assert_difference('WriteUp.count', -1) do
      delete write_up_url(@write_up)
    end

    assert_redirected_to write_ups_url
  end
end

require 'test_helper'

class ShortonersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shortoner = shortoners(:one)
  end

  test "should get index" do
    get shortoners_url
    assert_response :success
  end

  test "should get new" do
    get new_shortoner_url
    assert_response :success
  end

  test "should create shortoner" do
    assert_difference('Shortoner.count') do
      post shortoners_url, params: { shortoner: {  } }
    end

    assert_redirected_to shortoner_url(Shortoner.last)
  end

  test "should show shortoner" do
    get shortoner_url(@shortoner)
    assert_response :success
  end

  test "should get edit" do
    get edit_shortoner_url(@shortoner)
    assert_response :success
  end

  test "should update shortoner" do
    patch shortoner_url(@shortoner), params: { shortoner: {  } }
    assert_redirected_to shortoner_url(@shortoner)
  end

  test "should destroy shortoner" do
    assert_difference('Shortoner.count', -1) do
      delete shortoner_url(@shortoner)
    end

    assert_redirected_to shortoners_url
  end
end

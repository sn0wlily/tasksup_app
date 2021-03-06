require 'test_helper'

class KadaisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kadai = kadais(:one)
  end

  test "should get index" do
    get kadais_url
    assert_response :success
  end

  test "should get new" do
    get new_kadai_url
    assert_response :success
  end

  test "should create kadai" do
    assert_difference('Kadai.count') do
      post kadais_url, params: { kadai: { title: @kadai.title, out: @kadai.out, description: @kadai.description, due: @kadai.due, start_date: @kadai.start_date,   imp: @kadai.imp, sinko: @kadai.sinko} }
    end

    assert_redirected_to kadai_url(Kadai.last)
  end

  test "should show kadai" do
    get kadai_url(@kadai)
    assert_response :success
  end

  test "should get edit" do
    get edit_kadai_url(@kadai)
    assert_response :success
  end

  test "should update kadai" do
    patch kadai_url(@kadai), params: { kadai: { title: @kadai.title, out: @kadai.out, description: @kadai.description, due: @kadai.due, start_date: @kadai.start_date, imp: @kadai.imp, sinko: @kadai.sinko} }
    assert_redirected_to kadai_url(@kadai)
  end

  test "should destroy kadai" do
    assert_difference('Kadai.count', -1) do
      delete kadai_url(@kadai)
    end

    assert_redirected_to kadais_url
  end
end

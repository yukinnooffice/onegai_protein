require 'test_helper'

class Public::MemosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_memos_new_url
    assert_response :success
  end

  test "should get show" do
    get public_memos_show_url
    assert_response :success
  end

  test "should get index" do
    get public_memos_index_url
    assert_response :success
  end

  test "should get edit" do
    get public_memos_edit_url
    assert_response :success
  end

end

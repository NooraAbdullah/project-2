require 'test_helper'

class DecoratorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get decorators_index_url
    assert_response :success
  end

  test "should get show" do
    get decorators_show_url
    assert_response :success
  end

end

require 'test_helper'

class TennistopControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tennistop_index_url
    assert_response :success
  end

end

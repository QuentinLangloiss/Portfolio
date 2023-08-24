require "test_helper"

class ProjetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get projets_index_url
    assert_response :success
  end

  test "should get show" do
    get projets_show_url
    assert_response :success
  end
end

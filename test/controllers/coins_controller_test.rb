require "test_helper"

class CoinsControllerTest < ActionDispatch::IntegrationTest
  test "should get description:string" do
    get coins_description:string_url
    assert_response :success
  end

  test "should get acronym:string" do
    get coins_acronym:string_url
    assert_response :success
  end
end

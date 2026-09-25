require "test_helper"

class StarterHealthTest < ActionDispatch::IntegrationTest
  test "the starter app responds to its health route" do
    get rails_health_check_path

    assert_response :success
  end
end

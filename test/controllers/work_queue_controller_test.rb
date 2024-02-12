require "test_helper"

class WorkQueueControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get work_queue_index_url
    assert_response :success
  end
end

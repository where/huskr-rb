require 'test_helper'

class StatusesControllerTest < ActionController::TestCase
  test "create success" do
    title = "livin it up because rofyolo"
    user_name = 'lolman'
    assert_difference 'Status.count' do
      post :create, :status => {
        :title => title,
        :user_name => user_name
      }, :api_version => 1, :format => :json
    end

    assert_response :success
    status = Status.last

    assert_equal title, status.title
    assert_equal user_name, status.user_name

    assert_equal title, json_resp['title']
    assert_equal user_name, json_resp['user_name']
  end

  test "create validation error" do
    assert_no_difference 'Status.count' do
      post :create, :status => {
        :title => nil,
        :user_name => nil
      }, :format => :json, :api_version => 1
    end
    assert_response :unprocessable_entity

    expected = {
      "errors" => {
        "title" => ["can't be blank"]
      }
    }
    assert_equal expected, json_resp
  end
end

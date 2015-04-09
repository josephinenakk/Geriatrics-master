require 'test_helper'

class PostControllerTest < ActionController::TestCase
  test "should get Geriatric_Care_Manager" do
    get :Geriatric_Care_Manager
    assert_response :success
  end

  test "should get Geriatric_Client" do
    get :Geriatric_Client
    assert_response :success
  end

  test "should get Providers" do
    get :Providers
    assert_response :success
  end

  test "should get Medical_History" do
    get :Medical_History
    assert_response :success
  end

  test "should get Banking_And_Financial" do
    get :Banking_And_Financial
    assert_response :success
  end

  test "should get Other_Documents" do
    get :Other_Documents
    assert_response :success
  end

end

require 'test_helper'

class ProvidersControllerTest < ActionController::TestCase
  test "should get healthcare_providers" do
    get :healthcare_providers
    assert_response :success
  end

  test "should get caregiver_providers" do
    get :caregiver_providers
    assert_response :success
  end

  test "should get attorney_Insurance" do
    get :attorney_Insurance
    assert_response :success
  end

  test "should get _Agent" do
    get :_Agent
    assert_response :success
  end

  test "should get _Providers" do
    get :_Providers
    assert_response :success
  end

  test "should get financial" do
    get :financial
    assert_response :success
  end

  test "should get _Providers" do
    get :_Providers
    assert_response :success
  end

end

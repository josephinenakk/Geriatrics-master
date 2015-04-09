require 'test_helper'

class InsurancesControllerTest < ActionController::TestCase
  setup do
    @insurance = insurances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insurances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insurance" do
    assert_difference('Insurance.count') do
      post :create, insurance: { account_Holders: @insurance.account_Holders, account_No: @insurance.account_No, account_Type: @insurance.account_Type, beneficiary: @insurance.beneficiary, document: @insurance.document, institution_Information: @insurance.institution_Information, insurance_Card: @insurance.insurance_Card }
    end

    assert_redirected_to insurance_path(assigns(:insurance))
  end

  test "should show insurance" do
    get :show, id: @insurance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insurance
    assert_response :success
  end

  test "should update insurance" do
    put :update, id: @insurance, insurance: { account_Holders: @insurance.account_Holders, account_No: @insurance.account_No, account_Type: @insurance.account_Type, beneficiary: @insurance.beneficiary, document: @insurance.document, institution_Information: @insurance.institution_Information, insurance_Card: @insurance.insurance_Card }
    assert_redirected_to insurance_path(assigns(:insurance))
  end

  test "should destroy insurance" do
    assert_difference('Insurance.count', -1) do
      delete :destroy, id: @insurance
    end

    assert_redirected_to insurances_path
  end
end

require 'test_helper'

class BankingFinancialsControllerTest < ActionController::TestCase
  setup do
    @banking_financial = banking_financials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:banking_financials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create banking_financial" do
    assert_difference('BankingFinancial.count') do
      post :create, banking_financial: { account_Holders: @banking_financial.account_Holders, account_No: @banking_financial.account_No, account_type: @banking_financial.account_type, beneficiary: @banking_financial.beneficiary, date_Of_Birth: @banking_financial.date_Of_Birth, institution_Information: @banking_financial.institution_Information, social_Security: @banking_financial.social_Security }
    end

    assert_redirected_to banking_financial_path(assigns(:banking_financial))
  end

  test "should show banking_financial" do
    get :show, id: @banking_financial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @banking_financial
    assert_response :success
  end

  test "should update banking_financial" do
    put :update, id: @banking_financial, banking_financial: { account_Holders: @banking_financial.account_Holders, account_No: @banking_financial.account_No, account_type: @banking_financial.account_type, beneficiary: @banking_financial.beneficiary, date_Of_Birth: @banking_financial.date_Of_Birth, institution_Information: @banking_financial.institution_Information, social_Security: @banking_financial.social_Security }
    assert_redirected_to banking_financial_path(assigns(:banking_financial))
  end

  test "should destroy banking_financial" do
    assert_difference('BankingFinancial.count', -1) do
      delete :destroy, id: @banking_financial
    end

    assert_redirected_to banking_financials_path
  end
end

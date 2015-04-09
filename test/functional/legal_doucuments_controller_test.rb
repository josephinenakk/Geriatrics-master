require 'test_helper'

class LegalDoucumentsControllerTest < ActionController::TestCase
  setup do
    @legal_document = legal_doucuments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:legal_documents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create legal_doucument" do
    assert_difference('LegalDoucument.count') do
      post :create, legal_document: { do_Not_Resuscitate: @legal_document.do_Not_Resuscitate, healthcare_Directive: @legal_document.healthcare_Directive, letter_of_Authorization: @legal_document.letter_of_Authorization, location_of_Original: @legal_document.location_of_Original, pension_Papers: @legal_document.pension_Papers, power_of_Attorney: @legal_document.power_of_Attorney, trust: @legal_document.trust, will: @legal_document.will, wishes: @legal_document.wishes }
    end

    assert_redirected_to legal_doucument_path(assigns(:legal_document))
  end

  test "should show legal_doucument" do
    get :show, id: @legal_document
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @legal_document
    assert_response :success
  end

  test "should update legal_doucument" do
    put :update, id: @legal_document, legal_document: { do_Not_Resuscitate: @legal_document.do_Not_Resuscitate, healthcare_Directive: @legal_document.healthcare_Directive, letter_of_Authorization: @legal_document.letter_of_Authorization, location_of_Original: @legal_document.location_of_Original, pension_Papers: @legal_document.pension_Papers, power_of_Attorney: @legal_document.power_of_Attorney, trust: @legal_document.trust, will: @legal_document.will, wishes: @legal_document.wishes }
    assert_redirected_to legal_doucument_path(assigns(:legal_document))
  end

  test "should destroy legal_doucument" do
    assert_difference('LegalDoucument.count', -1) do
      delete :destroy, id: @legal_document
    end

    assert_redirected_to legal_doucuments_path
  end
end

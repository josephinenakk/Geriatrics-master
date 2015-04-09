require 'test_helper'

class MedicationsControllerTest < ActionController::TestCase
  setup do
    @medication = medications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medication" do
    assert_difference('Medication.count') do
      post :create, medication: { currently_Taking: @medication.currently_Taking, dosage: @medication.dosage, frequency: @medication.frequency, medication_Photo: @medication.medication_Photo, name_Of_Medication: @medication.name_Of_Medication, pharmacy: @medication.pharmacy, prescrbing_Physician: @medication.prescrbing_Physician, prescription: @medication.prescription, special_Instruvtions: @medication.special_Instruvtions }
    end

    assert_redirected_to medication_path(assigns(:medication))
  end

  test "should show medication" do
    get :show, id: @medication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medication
    assert_response :success
  end

  test "should update medication" do
    put :update, id: @medication, medication: { currently_Taking: @medication.currently_Taking, dosage: @medication.dosage, frequency: @medication.frequency, medication_Photo: @medication.medication_Photo, name_Of_Medication: @medication.name_Of_Medication, pharmacy: @medication.pharmacy, prescrbing_Physician: @medication.prescrbing_Physician, prescription: @medication.prescription, special_Instruvtions: @medication.special_Instruvtions }
    assert_redirected_to medication_path(assigns(:medication))
  end

  test "should destroy medication" do
    assert_difference('Medication.count', -1) do
      delete :destroy, id: @medication
    end

    assert_redirected_to medications_path
  end
end

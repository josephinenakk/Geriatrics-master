require 'test_helper'

class PersonalPropertiesControllerTest < ActionController::TestCase
  setup do
    @personal_property = personal_properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personal_properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal_property" do
    assert_difference('PersonalProperty.count') do
      post :create, personal_property: { address_Line1: @personal_property.address_Line1, address_Line2: @personal_property.address_Line2, city: @personal_property.city, item_Location: @personal_property.item_Location, make: @personal_property.make, model: @personal_property.model, notes: @personal_property.notes, notes: @personal_property.notes, notes_Collectibles_Valuable: @personal_property.notes_Collectibles_Valuable, property_Nickname: @personal_property.property_Nickname, state: @personal_property.state, stem_Description: @personal_property.stem_Description, vehicles: @personal_property.vehicles, year: @personal_property.year, zip: @personal_property.zip }
    end

    assert_redirected_to personal_property_path(assigns(:personal_property))
  end

  test "should show personal_property" do
    get :show, id: @personal_property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personal_property
    assert_response :success
  end

  test "should update personal_property" do
    put :update, id: @personal_property, personal_property: { address_Line1: @personal_property.address_Line1, address_Line2: @personal_property.address_Line2, city: @personal_property.city, item_Location: @personal_property.item_Location, make: @personal_property.make, model: @personal_property.model, notes: @personal_property.notes, notes: @personal_property.notes, notes_Collectibles_Valuable: @personal_property.notes_Collectibles_Valuable, property_Nickname: @personal_property.property_Nickname, state: @personal_property.state, stem_Description: @personal_property.stem_Description, vehicles: @personal_property.vehicles, year: @personal_property.year, zip: @personal_property.zip }
    assert_redirected_to personal_property_path(assigns(:personal_property))
  end

  test "should destroy personal_property" do
    assert_difference('PersonalProperty.count', -1) do
      delete :destroy, id: @personal_property
    end

    assert_redirected_to personal_properties_path
  end
end

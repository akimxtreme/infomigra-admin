require 'test_helper'

class FamilyBondsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @family_bond = family_bonds(:one)
  end

  test "should get index" do
    get family_bonds_url
    assert_response :success
  end

  test "should get new" do
    get new_family_bond_url
    assert_response :success
  end

  test "should create family_bond" do
    assert_difference('FamilyBond.count') do
      post family_bonds_url, params: { family_bond: { description: @family_bond.description, name: @family_bond.name, percentage_profile: @family_bond.percentage_profile } }
    end

    assert_redirected_to family_bond_url(FamilyBond.last)
  end

  test "should show family_bond" do
    get family_bond_url(@family_bond)
    assert_response :success
  end

  test "should get edit" do
    get edit_family_bond_url(@family_bond)
    assert_response :success
  end

  test "should update family_bond" do
    patch family_bond_url(@family_bond), params: { family_bond: { description: @family_bond.description, name: @family_bond.name, percentage_profile: @family_bond.percentage_profile } }
    assert_redirected_to family_bond_url(@family_bond)
  end

  test "should destroy family_bond" do
    assert_difference('FamilyBond.count', -1) do
      delete family_bond_url(@family_bond)
    end

    assert_redirected_to family_bonds_url
  end
end

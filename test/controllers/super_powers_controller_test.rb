require 'test_helper'

class SuperPowersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @super_power = super_powers(:one)
  end

  test "should get index" do
    get super_powers_url
    assert_response :success
  end

  test "should get new" do
    get new_super_power_url
    assert_response :success
  end

  test "should create super_power" do
    assert_difference('SuperPower.count') do
      post super_powers_url, params: { super_power: { description: @super_power.description, name: @super_power.name, super_hero_id: @super_power.super_hero_id } }
    end

    assert_redirected_to super_power_url(SuperPower.last)
  end

  test "should show super_power" do
    get super_power_url(@super_power)
    assert_response :success
  end

  test "should get edit" do
    get edit_super_power_url(@super_power)
    assert_response :success
  end

  test "should update super_power" do
    patch super_power_url(@super_power), params: { super_power: { description: @super_power.description, name: @super_power.name, super_hero_id: @super_power.super_hero_id } }
    assert_redirected_to super_power_url(@super_power)
  end

  test "should destroy super_power" do
    assert_difference('SuperPower.count', -1) do
      delete super_power_url(@super_power)
    end

    assert_redirected_to super_powers_url
  end
end

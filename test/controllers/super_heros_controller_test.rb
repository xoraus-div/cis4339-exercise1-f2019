require 'test_helper'

class SuperHerosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @super_hero = super_heros(:one)
  end

  test "should get index" do
    get super_heros_url
    assert_response :success
  end

  test "should get new" do
    get new_super_hero_url
    assert_response :success
  end

  test "should create super_hero" do
    assert_difference('SuperHero.count') do
      post super_heros_url, params: { super_hero: { hero_name: @super_hero.hero_name, real_name: @super_hero.real_name } }
    end

    assert_redirected_to super_hero_url(SuperHero.last)
  end

  test "should show super_hero" do
    get super_hero_url(@super_hero)
    assert_response :success
  end

  test "should get edit" do
    get edit_super_hero_url(@super_hero)
    assert_response :success
  end

  test "should update super_hero" do
    patch super_hero_url(@super_hero), params: { super_hero: { hero_name: @super_hero.hero_name, real_name: @super_hero.real_name } }
    assert_redirected_to super_hero_url(@super_hero)
  end

  test "should destroy super_hero" do
    assert_difference('SuperHero.count', -1) do
      delete super_hero_url(@super_hero)
    end

    assert_redirected_to super_heros_url
  end
end

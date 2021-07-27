require 'test_helper'

class LinkIngredientsDishesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get link_ingredients_dishes_create_url
    assert_response :success
  end

  test "should get update" do
    get link_ingredients_dishes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get link_ingredients_dishes_destroy_url
    assert_response :success
  end

end

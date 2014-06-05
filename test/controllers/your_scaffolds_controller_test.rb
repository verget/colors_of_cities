require 'test_helper'

class YourScaffoldsControllerTest < ActionController::TestCase
  setup do
    @your_scaffold = your_scaffolds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:your_scaffolds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create your_scaffold" do
    assert_difference('YourScaffold.count') do
      post :create, your_scaffold: { description: @your_scaffold.description, image: @your_scaffold.image, title: @your_scaffold.title }
    end

    assert_redirected_to your_scaffold_path(assigns(:your_scaffold))
  end

  test "should show your_scaffold" do
    get :show, id: @your_scaffold
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @your_scaffold
    assert_response :success
  end

  test "should update your_scaffold" do
    patch :update, id: @your_scaffold, your_scaffold: { description: @your_scaffold.description, image: @your_scaffold.image, title: @your_scaffold.title }
    assert_redirected_to your_scaffold_path(assigns(:your_scaffold))
  end

  test "should destroy your_scaffold" do
    assert_difference('YourScaffold.count', -1) do
      delete :destroy, id: @your_scaffold
    end

    assert_redirected_to your_scaffolds_path
  end
end

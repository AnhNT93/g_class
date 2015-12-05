require 'test_helper'

class CodeExamplesControllerTest < ActionController::TestCase
  setup do
    @code_example = code_examples(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:code_examples)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create code_example" do
    assert_difference('CodeExample.count') do
      post :create, code_example: { content: @code_example.content, name: @code_example.name }
    end

    assert_redirected_to code_example_path(assigns(:code_example))
  end

  test "should show code_example" do
    get :show, id: @code_example
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @code_example
    assert_response :success
  end

  test "should update code_example" do
    patch :update, id: @code_example, code_example: { content: @code_example.content, name: @code_example.name }
    assert_redirected_to code_example_path(assigns(:code_example))
  end

  test "should destroy code_example" do
    assert_difference('CodeExample.count', -1) do
      delete :destroy, id: @code_example
    end

    assert_redirected_to code_examples_path
  end
end

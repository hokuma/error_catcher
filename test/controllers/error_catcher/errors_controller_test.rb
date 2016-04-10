require 'test_helper'

module ErrorCatcher
  class ErrorsControllerTest < ActionController::TestCase
    setup do
      @error = errors(:one)
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:errors)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create error" do
      assert_difference('Error.count') do
        post :create, error: { description: @error.description, fired_at: @error.fired_at, name: @error.name, stacktrace: @error.stacktrace }
      end

      assert_redirected_to error_path(assigns(:error))
    end

    test "should show error" do
      get :show, id: @error
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @error
      assert_response :success
    end

    test "should update error" do
      patch :update, id: @error, error: { description: @error.description, fired_at: @error.fired_at, name: @error.name, stacktrace: @error.stacktrace }
      assert_redirected_to error_path(assigns(:error))
    end

    test "should destroy error" do
      assert_difference('Error.count', -1) do
        delete :destroy, id: @error
      end

      assert_redirected_to errors_path
    end
  end
end

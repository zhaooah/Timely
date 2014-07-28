require 'test_helper'

module Timely
  class CalendarsControllerTest < ActionController::TestCase
    setup do
      @calendar = calendars(:one)
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:calendars)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create calendar" do
      assert_difference('Calendar.count') do
        post :create, calendar: { description: @calendar.description, event_id: @calendar.event_id, name: @calendar.name, owner_id: @calendar.owner_id }
      end

      assert_redirected_to calendar_path(assigns(:calendar))
    end

    test "should show calendar" do
      get :show, id: @calendar
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @calendar
      assert_response :success
    end

    test "should update calendar" do
      patch :update, id: @calendar, calendar: { description: @calendar.description, event_id: @calendar.event_id, name: @calendar.name, owner_id: @calendar.owner_id }
      assert_redirected_to calendar_path(assigns(:calendar))
    end

    test "should destroy calendar" do
      assert_difference('Calendar.count', -1) do
        delete :destroy, id: @calendar
      end

      assert_redirected_to calendars_path
    end
  end
end

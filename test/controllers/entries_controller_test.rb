require 'test_helper'

class EntriesControllerTest < ActionController::TestCase
  setup do
    @entry = entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entry" do
    assert_difference('Entry.count') do
      post :create, entry: { alcohol: @entry.alcohol, breast_fullness: @entry.breast_fullness, breast_tenderness: @entry.breast_tenderness, cervix_firmness: @entry.cervix_firmness, cervix_height: @entry.cervix_height, cirvix_openness: @entry.cirvix_openness, cramps: @entry.cramps, disturbed: @entry.disturbed, exercise: @entry.exercise, ferning: @entry.ferning, flow_type: @entry.flow_type, flow_volume: @entry.flow_volume, ibuprofen: @entry.ibuprofen, intercourse: @entry.intercourse, multivitamin: @entry.multivitamin, notes: @entry.notes, opk: @entry.opk, ovulatory_pain: @entry.ovulatory_pain, pregancy_test: @entry.pregancy_test, protected: @entry.protected, recorded_at: @entry.recorded_at, temperature: @entry.temperature, travel: @entry.travel, tylenol: @entry.tylenol }
    end

    assert_redirected_to entry_path(assigns(:entry))
  end

  test "should show entry" do
    get :show, id: @entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entry
    assert_response :success
  end

  test "should update entry" do
    patch :update, id: @entry, entry: { alcohol: @entry.alcohol, breast_fullness: @entry.breast_fullness, breast_tenderness: @entry.breast_tenderness, cervix_firmness: @entry.cervix_firmness, cervix_height: @entry.cervix_height, cirvix_openness: @entry.cirvix_openness, cramps: @entry.cramps, disturbed: @entry.disturbed, exercise: @entry.exercise, ferning: @entry.ferning, flow_type: @entry.flow_type, flow_volume: @entry.flow_volume, ibuprofen: @entry.ibuprofen, intercourse: @entry.intercourse, multivitamin: @entry.multivitamin, notes: @entry.notes, opk: @entry.opk, ovulatory_pain: @entry.ovulatory_pain, pregancy_test: @entry.pregancy_test, protected: @entry.protected, recorded_at: @entry.recorded_at, temperature: @entry.temperature, travel: @entry.travel, tylenol: @entry.tylenol }
    assert_redirected_to entry_path(assigns(:entry))
  end

  test "should destroy entry" do
    assert_difference('Entry.count', -1) do
      delete :destroy, id: @entry
    end

    assert_redirected_to entries_path
  end
end

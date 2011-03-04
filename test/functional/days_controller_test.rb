require 'test_helper'

class DaysControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Day.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Day.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Day.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to day_url(assigns(:day))
  end

  def test_edit
    get :edit, :id => Day.first
    assert_template 'edit'
  end

  def test_update_invalid
    Day.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Day.first
    assert_template 'edit'
  end

  def test_update_valid
    Day.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Day.first
    assert_redirected_to day_url(assigns(:day))
  end

  def test_destroy
    day = Day.first
    delete :destroy, :id => day
    assert_redirected_to days_url
    assert !Day.exists?(day.id)
  end
end

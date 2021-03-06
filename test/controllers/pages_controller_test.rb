require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  setup { @page = pages(:one) }

  test 'should get index' do
    get pages_url
    assert_response :success
  end

  test 'should get new' do
    get new_page_url
    assert_response :success
  end

  test 'should create page' do
    assert_difference('Page.count') { post pages_url, params: { page: {} } }

    assert_redirected_to page_url(Page.last)
  end

  test 'should show page' do
    get page_url(@page)
    assert_response :success
  end

  test 'should get edit' do
    get edit_page_url(@page)
    assert_response :success
  end

  test 'should update page' do
    patch page_url(@page), params: { page: {} }
    assert_redirected_to page_url(@page)
  end

  test 'should destroy page' do
    assert_difference('Page.count', -1) { delete page_url(@page) }

    assert_redirected_to pages_url
  end
end

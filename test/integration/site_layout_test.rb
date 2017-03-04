# 
#  site_layout_test.rb
#
#  Defines integration test to test app behaviour as a whole
#  To generate this file:  rails generate integration_test site_layout
#

require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  
  test "layout links" do
    get root_path
    
    # assert_template checks if home page was rendered with correct view
    assert_template 'static_pages/home'
    
    # assert_select verifies the presence of a particular link url combo
    # Will check for HTML tags eg.  <a href="/about">...</a>  etc
    
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
  end
end

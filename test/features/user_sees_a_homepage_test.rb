require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'

    assert page.has_content?("Welcome!")
    assert_equal 200, page.status_code
  end

  def test_page_does_not_exist
    visit '/gobble'

    assert page.has_content?("Page not found.")
    assert_equal 404, page.status_code
  end

  def test_user_can_see_about_page
    visit '/about'

    assert page.has_content?("About Me!")
    assert_equal 200, page.status_code
  end
end

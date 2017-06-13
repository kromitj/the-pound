require 'test_helper'


# was the web request successful?
# was the user redirected to the right page?
# was the user successfully authenticated?
# was the correct object stored in the response template?
# was the appropriate message displayed to the user in the view?
class WelcomeControllerTest < ActionDispatch::IntegrationTest
  def setup
		
	end
	
	def test_simple_response
		get "/"
    assert_equal 200, status        
	end 
	def test_for_content
		click_link('The Pound')
		# page.must_have_content('The Pound')
	end

	def test_link_to_animals_new
		click_on 'See some Cuties'
	end

end

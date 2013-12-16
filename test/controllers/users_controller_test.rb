require "test_helper"

class UsersControllerTest < ActionController::TestCase

  def test_new
    get :new
  end

  def test_create
  	params = { "user"=>
      {"first_name"=>"Tina",
       "last_name"=>"Chen",
       "email"=>"tinachen.yun@gmail.com",
        "password"=>"[FILTERED]",
        "password_confirmation"=>"[FILTERED]"
      }
    }
  	assert_difference "User.count" do
  		post :create, params
  	end
  	assert_redirected_to dashboard_url
  	assert_equal "You had successfully created your account!", flash[:notice]
  end
end

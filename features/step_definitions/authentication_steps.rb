Given /^I am logged in$/ do
  @current_user = Factory(:user)
  post "/session", :login => @current_user.login, :password => "password"
end

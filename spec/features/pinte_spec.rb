require 'rails_helper'


describe "users", type: :feature  do
	

	it  "redirecciona al inicio despues de haber logeado" do
		visit "/users/sign_in"
		fill_in 'user_email', with: 'rasch1@example.com'
		fill_in 'user_password', with: '12345678'
		find("input[type='submit']").click
		expect(page).to have_content('SAAS')
	end
		
end

describe "user", type: :feature  do
	

	it  "redirecciona al inicio despues de haberse registrado" do
		visit "/users/sign_up"
		fill_in 'user_email', with: 'rasch13@example.com'
		fill_in 'user_password', with: '12345678'
		fill_in 'user_password_confirmation', with: '12345678'
		find("input[type='submit']").click
		expect(page).to have_content('SAAS')
	end
		
end




require 'spec_helper'

feature 'Creating Projects' do 
	scenario "can crete a project" do
		visit '/'

		click_link 'New Project'

		fill_in 'Name', with: 'TextMate2'
		fill_in 'Description', with: 'A text editor for OSX'
		click_button 'Create Project'

		expect(page).to have_content('Project has been created.')
	end
end
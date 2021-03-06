require 'spec_helper'

feature 'Creating Projects' do 
	scenario "can crete a project" do
		visit '/'

		click_link 'New Project'

		fill_in 'Name', with: 'TextMate2'
		fill_in 'Description', with: 'A text editor for OSX'
		click_button 'Create Project'

		expect(page).to have_content('Project has been created.')


		project = Project.where(name: "TextMate2").first
		expect(page.current_url).to eql(project_url(project))

		title = "TextMate2 - Projects - Ticketee"
		expect(page).to have_title(title)
	end
end
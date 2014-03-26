require 'rspec/core'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature "Create task manager" do
  scenario "user can create a new task" do
    visit '/'

    click_link "Create Task"
    fill_in "task_name", with: "Wash Dishes"
    click_on "Submit"

    expect(page).to have_content("Wash Dishes")
  end
end


require 'rspec/core'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature "Create task manager" do
  scenario "user can visit homepage" do
    visit '/'
  end
end


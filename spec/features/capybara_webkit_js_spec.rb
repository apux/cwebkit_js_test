require 'rails_helper'

feature "test subdomain" do
  scenario "shows a page with no subdomain with no js" do
    visit "/"
    expect(page).to have_content("Welcome Guest") # PASS
  end

  scenario "shows a page with no subdomain with js", js: true do
    visit "/"
    expect(page).to have_content("Welcome Guest") # PASS
  end

  scenario "shows a page with subdomain with no js" do
    visit "http://admin.lvh.me/"
    expect(page).to have_content("Welcome Admin") # PASS
  end

  scenario "shows a page with subdomain with js", js: true do
    visit "http://admin.lvh.me/"
    expect(page).to have_content("Welcome Admin") # FAIL
  end
end

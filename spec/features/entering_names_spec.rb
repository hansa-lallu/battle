feature 'entering_names' do
  scenario 'Can enter a name in a form' do
    visit('/')
    fill_in :'player_1_name', with: "John"
    fill_in :player_2_name, with: "David"
    click_button 'Submit'
    expect(page).to have_content "John vs. David"
  end
end
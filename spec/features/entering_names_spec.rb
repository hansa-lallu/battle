feature 'entering_names' do
  scenario 'Can enter a name in a form' do
    sign_in_and_play
    expect(page).to have_content "John vs. David"
  end
end
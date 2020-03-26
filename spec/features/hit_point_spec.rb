feature 'hit_point' do
  scenario "view player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content "David: 60 HP"
  end
 
  scenario 'see Player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'John: 60HP'
  end
end
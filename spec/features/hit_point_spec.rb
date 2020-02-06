feature 'hit_point' do
  scenario "view player 2's Hit points" do
    sign_in_and_play
    expect(page).to have_content "David: 60 HP"
  end
end
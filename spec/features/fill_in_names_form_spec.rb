feature 'player fill in names' do
  scenario 'checks for forms' do
    sign_in_and_play
    expect(page).to have_content('Hannah vs. Hunor')
  end
end

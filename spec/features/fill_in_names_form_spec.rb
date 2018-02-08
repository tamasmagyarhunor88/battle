feature 'player fill in names' do
  scenario 'checks for forms' do
    visit('/')
    fill_in 'Player1', with: "Hunor"
    fill_in 'Player2', with: "Justyna"
    click_button('Save')
    expect(page).to have_content('Hunor', "Justyna")
  end
end

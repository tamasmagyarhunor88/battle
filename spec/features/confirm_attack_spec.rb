feature 'attack' do
  scenario 'confirms attack' do
    sign_in_and_play
    click_button('ATTACK Justyna!')
    expect(page).to have_content('Hunor attacked Justyna!')
  end
end

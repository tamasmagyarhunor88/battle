feature 'attack' do
  scenario 'confirms attack' do
    sign_in_and_play
    click_button('ATTACK Justyna!')
    expect(page).to have_content('Hunor attacked Justyna!')
  end

  scenario 'back to arena' do
    sign_in_and_play
    click_button('ATTACK Justyna!')
    click_button('go next round!')
    expect(page).to have_content('Hunor vs. Justyna')
  end
end

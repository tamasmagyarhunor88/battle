feature 'attack' do
  scenario 'confirms attack' do
    sign_in_and_play
    click_button('ATTACK!')
    expect(page).to have_content('Hannah attacked Hunor!')
  end

  scenario 'back to arena' do
    sign_in_and_play
    click_button('ATTACK!')
    click_button('go next round!')
    expect(page).to have_content('Hannah vs. Hunor')
  end
end

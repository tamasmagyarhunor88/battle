feature 'switch turns' do
  scenario 'second player can attack' do
    sign_in_and_play
    click_button('ATTACK!')
    click_button('go next round!')
    click_button('ATTACK!')
    expect(page).to have_content("Hannah HP: 90")
  end

  scenario 'second player can attack' do
    sign_in_and_play
    click_button('ATTACK!')
    expect(page).to have_content("Hunor HP: 90")
  end
end

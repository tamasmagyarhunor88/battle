def sign_in_and_play
  visit('/')
  fill_in 'player1', with: "Hannah"
  fill_in 'player2', with: "Hunor"
  click_button('Save')
end

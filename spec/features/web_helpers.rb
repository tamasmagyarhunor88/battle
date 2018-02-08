def sign_in_and_play
  visit('/')
  fill_in 'player1', with: "Hunor"
  fill_in 'player2', with: "Justyna"
  click_button('Save')
end

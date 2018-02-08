def sign_in_and_play
  visit('/')
  fill_in 'Player1', with: "Hunor"
  fill_in 'Player2', with: "Justyna"
  click_button('Save')
end

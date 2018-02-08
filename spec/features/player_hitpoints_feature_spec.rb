feature 'shots hitpoints' do
  scenario 'shots both hitpoints under names' do
    sign_in_and_play
    expect(find('div.player2-hp')).to have_content('100')
  end
end

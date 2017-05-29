feature 'losing' do
  scenario 'see lose-message if 0HP is reached' do
    sign_in_and_play
    19.times do
      click_button('Attack')
      click_button('Ok')
    end
    expect(page).to have_content('Enrique: 0')
    expect(page).to have_content('Enrique lost')
  end
end

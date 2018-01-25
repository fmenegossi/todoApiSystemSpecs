require 'rails_helper'

describe 'Manage Tasks', type: :system, js: true do
  it 'adds a new task' do
    visit todos_path

    fill_in 'todo_title', with: 'Be Batman'

    page.execute_script("$('form').submit()")

    expect(page).to have_content('Be Batman')
  end
end

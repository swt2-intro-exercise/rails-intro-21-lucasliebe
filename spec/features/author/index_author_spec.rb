require 'rails_helper'

describe "index author page", type: :feature do
  it "check UI" do
        visit authors_path()
        expect(page).to have_link 'New', href: new_author_path
  end
end

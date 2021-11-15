require 'rails_helper'

describe "Show author page", type: :feature do
  it "visit Alan Details page" do
        @alan = create :author
	visit author_path(@alan)
	expect(page).to have_text("@alan.first_name")
  end
end

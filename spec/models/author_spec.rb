require 'rails_helper'

RSpec.describe Author, type: :model do
  it "create and check Author" do
	author = Author.new()
	author.first_name = "Alan"
	author.last_name = "Turing"
	author.homepage = "https://wikipedia.org/Alan_Turing"
        expect(author.first_name).to eq("Alan")
        expect(author.last_name).to eq("Turing")
        expect(author.homepage).to eq("https://wikipedia.org/Alan_Turing")
	expect(author.name).to eq("Alan Turing")
  end
end

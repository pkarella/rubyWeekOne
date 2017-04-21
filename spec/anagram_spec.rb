require('rspec')
require('anagram')
describe('String#anagram') do
  it("returns wether two words are an anagram") do
    expect("dog".anagram("gdo")).to(eq("its an anagram"))
  end
end

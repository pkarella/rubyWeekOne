require('rspec')
require('anagram')
describe('String#anagram') do
  it("returns wether two words are an anagram") do
    expect("dog".anagram("gdo")).to(eq("its an anagram"))
  end
  it("returns wether two words are an anagram") do
    expect("dog".anagram("god")).to(eq("its an anagram and this is also a palindrome"))
  end
  it("returns the answer no matter the cases put in") do
    expect("Doggy".anagram("godgy")).to(eq("its an anagram"))
  end
  it("if both word inputs don't have any similar characters") do
    expect("Dax".anagram("gom")).to(eq("this is an antigram"))
  end
  it("an anagram sentence will return as an anagram" ) do
    expect("gto kilm rof ookiec".anagram("got milk for cookie")).to(eq("its an anagram"))
  end
end

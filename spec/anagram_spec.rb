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
    expect("Dog".anagram("god")).to(eq("its an anagram and this is also a palindrome"))
  end
end

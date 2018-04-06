RSpec.describe Stringer do
  it "has a version number" do
    expect(Stringer::VERSION).not_to be nil
  end

  it "concatenates undefined number of strings with a space" do 
    expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end

  it "truncates a string to a specified length, with ellipses" do
    expect(Stringer.minify "This string is too long", 5).to eq("This ...")
  end
  it "doesn't modify a string shorter than or equal to the minify length" do
    str1 = "Hello, World!"
    expect(Stringer.minify str1, 50).to eq(str1)
    expect(Stringer.minify str1, str1.length).to equal(str1)
  end

  it "replaces instances of a string with another string" do
    expect(Stringer.replacify("I can't do this", "can't", "can")).to eq("I can do this")
  end

  it "splits words into an array" do
    expect(Stringer.tokenize("I love to code")).to eq(["I", "love", "to", "code"])
  end

  it "removes instances of a substring from a string" do
    expect(Stringer.removify("I'm not a developer", "not ")).to eq("I'm a developer")
  end
end

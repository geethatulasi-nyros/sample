require 'great'
describe Great::Text do
	it "hi" do
		expect(Great::Text.hi)
	end
	it "initialize" do
		expect(Great::Text.new)
	end
	it "geetha" do
		expect(Great::Text.search("geetha")).to eql("geetha")
	end
	it "anything" do
		expect(Great::Text.search("not geetha")).to eql("end")
	end
	it "pluralizes a word" do
  	expect(Great::Text.pluralize("Tomato")).to eql("Tomatoes")
	end
end
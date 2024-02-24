require "stringW.rb"

RSpec.describe StringWrapper do
  let(:wrapper) { StringWrapper.new('TestString') }

  describe "#reverse" do
    it "reverses the string" do
      expect(wrapper.reverse).to eq('gnirtStseT')
    end
  end

  describe "#upcase" do
    it "converts the string to uppercase" do
      expect(wrapper.upcase).to eq('TESTSTRING')
    end
  end

  describe "#downcase" do
    it "converts the string to lowercase" do
      expect(wrapper.downcase).to eq('teststring')
    end
  end
end
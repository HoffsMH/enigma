require './spec/spec_helper.rb'
require './lib/keygen'

describe KeyGen do
  describe ".check_key" do
    it "returns false when a faulty key  string is  given" do
      keygen = KeyGen.new
      
      expected = false
      result = keygen.check_key('123456', 5)
      
      assert_equal(expected, result)
      
    end
    it "returns the key when a good key  string is  given" do
      keygen = KeyGen.new
      
      expected = '12345'
      result = keygen.check_key('12345', 5)
      
      assert_equal(expected, result)
      
    end
  end
end

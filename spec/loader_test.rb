require './spec/spec_helper.rb'
require './lib/loader.rb'

describe Loader do
  describe 'str_from_file' do
    it "returns false if the file doesn't exist" do
      loader = Loader.new
      
      expected = false
      result = loader.str_from_file('puppy')
      
      assert_equal(expected, result)
      
    end
    it "returns the contents of the file if the file exist" do
      loader = Loader.new
      
      expected = "Im a wild one"
      result = loader.str_from_file('samples/imwild.txt')
      
      assert_equal(expected, result)
      
    end
  end
end
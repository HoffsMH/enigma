require './spec/spec_helper.rb'
require './lib/loader.rb'

describe Loader do
  describe ".args" do
    it "gets arguments from the commandline" do
      loader = Loader.new()
    
      
      expected = ["hi", "there"]
      result =  loader.args
      
      assert_equal(expected, result)
    end
    
  end
end
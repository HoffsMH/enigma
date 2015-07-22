require './spec/spec_helper.rb'
require './lib/arggen.rb'

describe ArgGen do
  describe ".gen_message" do
    it "generates get a string from file if a file is given" do
      arggen = ArgGen.new
      
      expected = "Im a wild one"
      result = arggen.gen_message('samples/imwild.txt')
      
      assert_equal(expected, result)       
    end
    it "returns false if an file doesn't exist" do
      arggen =ArgGen.new
      
      expected = false
      result = arggen.gen_message("sadf")
      
      assert_equal(expected, result)
    end
    
    it "ask the user for a string to encrypt if no file is given" do
      arggen = ArgGen.new
      
      arggen.stub :get_user_message, "whoah" do       
        result = arggen.gen_message(nil)         
        expected = "whoah"
        assert_equal(expected, result)
      end
             
    end
    
  end
  describe ".gen_output" do
    it "returns false if path provided is not legitimate" do
      arggen = ArgGen.new
        
      expected = false
      result = arggen.gen_output("somefilethatdoesntexist")
      
      assert_equal(expected, result)
      
    end
    it "returns a file handle if the path provided is legitimate" do
      arggen = ArgGen.new
      
      expected = File.open('testfile', 'w')
      result = arggen.gen_output('testfile')
      
      assert_equal(expected.inspect, result.inspect)       
    end
    
  end

end

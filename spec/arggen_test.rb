require './spec/spec_helper.rb'
require './lib/arggen.rb'
require './lib/dategen.rb'

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
    it "returns a file handle if the path provided is legitimate" do
      arggen = ArgGen.new
      
      expected = File.open('testfile', 'w')
      result = arggen.gen_output('testfile')
      
      assert_equal(expected.inspect, result.inspect)       
    end
    
  end
  
  describe ".gen_key" do
    it "returns false invalid key is given" do
      arggen = ArgGen.new
      
      expected = false
      result = arggen.gen_key("someboguskey")
      
      assert_equal(expected, result)       
    end
    
    it "returns the key when a valid key is given" do
      arggen = ArgGen.new
      
      result = arggen.gen_key('53351')
      expected = '53351'
      
      assert_equal(expected, result)
    end
    
    it "returns a valid key when no key is given" do
      arggen = ArgGen.new
      arggen.keygen.stub :gen, 53342 do
        
      result = arggen.gen_key(nil)
      expected = 53342  
        
        assert_equal(expected, result)
      end
    end
    
  end
  describe ".gen_date" do
    it "returns current date if no date is given" do
      arggen = ArgGen.new
      dategen = DateGen.new
      result = arggen.gen_date(nil)
      expected = dategen.gen
      
      assert_equal(expected, result)
      
      
    end
    
    it  "returns date if valid date is given" do
      arggen = ArgGen.new
      
      expected = '090909'
      result = arggen.gen_date("090909")
      
      assert_equal(expected, result)
      
    end
  end

end

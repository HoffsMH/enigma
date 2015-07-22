require './spec/spec_helper.rb'
require './lib/encrypt'


describe Encryptor do
  describe ".new" do 
    it "makes a new encryptor object" do
      skip
      encryptor = Encryptor.new()
      
      expected = Encryptor
      result = encryptor.class
      
      assert_equal(expected, result)
    end
  end
  describe ".gen_message" do
    it "generates get a string from file if a file is given" do
      encryptor = Encryptor.new
      
      expected = "Im a wild one"
      result = encryptor.gen_message('samples/imwild.txt')
      
      assert_equal(expected, result)       
    end
    it "returns false if an file doesn't exist" do
      encryptor =Encryptor.new
      
      expected = false
      result = encryptor.gen_message("sadf")
      
      assert_equal(expected, result)
    end
    
    it "ask the user for a string to encrypt if no file is given" do
      encryptor = Encryptor.new
      
      encryptor.stub :get_user_message, "whoah" do       
        result = encryptor.gen_message(nil)         
        expected = "whoah"
        assert_equal(expected, result)
      end
             
    end
    
  end
  describe ".gen_output" do
    it "returns false if path provided is not legitimate" do
      encryptor = Encryptor.new
        
      expected = false
      result = encryptor.gen_output("somefilethatdoesntexist")
      
      assert_equal(expected, result)
      
    end
    it "returns a file handle if the path provided is legitimate" do
      encryptor = Encryptor.new
      
      expected = File.open('testfile', 'w')
      result = encryptor.gen_output('testfile')
      
      assert_equal(expected.inspect, result.inspect)       
    end
    
  end
  describe ".gen_key" do
    it "returns false invalid key is given" do
      encryptor = Encryptor.new
      
      expected = false
      result = encryptor.gen_key("someboguskey")
      
      assert_equal(expected, result)       
    end
    
    it "returns the key when a valid key is given" do
      encryptor = Encryptor.new
      
      result = encryptor.gen_key('53351')
      expected = 53351
      
      assert_equal(expected, result)
    end
    
    it "returns a valid key when no key is given" do
      encryptor = Encryptor.new
      encryptor.keygen.stub :gen, 53342 do
        
      result = encryptor.gen_key(nil)
      expected = 53342  
        
        assert_equal(expected, result)
      end
    end
    
  end
  
  
  
end




__END__


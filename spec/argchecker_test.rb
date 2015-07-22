require './spec/spec_helper.rb'
require './lib/argchecker'

describe ArgChecker do
  describe ".check_io" do
    it "outputs an error message and returns false if given a bad message input" do
      
      argchecker = ArgChecker.new
      
      expected = false
      result = argchecker.check_io(false, true)
      
      assert_equal(expected, result)
    end
    
  end
  describe ".check_key" do
    it "returns the key if a valid key is given" do
      argchecker = ArgChecker.new
      key = "12345"
      
      expected = "12345"
      result = argchecker.check_key(key)
      
      assert_equal(expected,  result)
    end
    
    it "returns a new key if  false" do
      
      argchecker = ArgChecker.new
      argchecker.arggen.stub :gen_key, '12345' do
        key = false
        
        expected = "12345"
        result = argchecker.check_key(key)
        
        assert_equal(expected,  result)
      end
    end
  end
  
  describe ".check_date" do
    it "returns the date if a valid date is given" do
      argchecker = ArgChecker.new
      date = '101010'
      
      expected = '101010'
      result = argchecker.check_date(date)
      
      assert_equal(expected,  result)
    end
    
    it "returns today if false" do
      
      argchecker = ArgChecker.new
      argchecker.arggen.stub :gen_date, '101010' do
        date = false
        
        expected = "101010"
        result = argchecker.check_date(date)
        
        assert_equal(expected,  result)
      end
    end
  end
end

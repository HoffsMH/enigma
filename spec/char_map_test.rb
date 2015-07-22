require './spec/spec_helper.rb'
require './lib/char_map.rb'

describe CharMap do
  describe ".new()" do
    it "has a default character array if no arguments are given" do
      char_map = CharMap.new
      
      expected = ('a'..'z').to_a + (0..9).to_a + [" "] + ["."] + [","] 
      result = char_map.array
      
      assert_equal(expected, result)
    end
  end
  describe ".char" do
    it "returns the index of a given character if it exist on the map" do
      char_map = CharMap.new
      
      expected = 7
      result = char_map.char('h')
      
      assert(expected, result)
    end
    
  end
  describe ".rotate" do
    it "returns the character from the character map given a certain rotation and a character" do
      char_map = CharMap.new
      expected = 'i'
      result = char_map.rotate('h', 1)
      
      assert_equal(expected, result)
      
    end
    
  end
  

end
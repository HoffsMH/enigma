class CharMap
  attr_accessor :array
  DEFAULT_CHAR_ARRAY = ('A'..'Z').to_a + ('a'..'z').to_a + (0..9).to_a + [" "] + ["."] + [","] + ["\n"]
  
  def initialize(char_array=  DEFAULT_CHAR_ARRAY)     
    @array = char_array
  end
  
  def char(char)
    @array.index(char)
  end
  
  def rotate(char, rotation)
    index = char(char)
    @array.rotate(rotation)[index]
  end
  
  
  
  
end

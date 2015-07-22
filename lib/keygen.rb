class KeyGen
  def gen(digits)
    output = rand.to_s[3..digits+2]
  end
  
  def check_key(digits_str, length)   
    if digits_str.length != length
      false
    else
      digits_str
    end     
  end

  
end
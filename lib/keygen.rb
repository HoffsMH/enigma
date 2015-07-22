class KeyGen
  def gen(digits)
    output = rand.to_s[3..digits+2]
  end
  
  def check_key(digits_str, minlength)
    digits = digits_str.to_i
  
    if digits.to_s.length != minlength
      false
    else
      digits
    end     
  end

  
end
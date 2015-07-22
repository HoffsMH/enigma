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
  
end








__END__


require './spec/spec_helper.rb'
require './lib/rotator.rb'

describe Rotator do
  describe ".load_rotations" do
    it "loads the correct A B C D rotations given a key and a date code" do
      
      rotator = Rotator.new
      key = '41521'
      date = '020315'
      
      rotator.load_rotations(key, date)
      
      expected = [50, 17, 54, 26]
      result = rotator.rotations
      
      assert_equal(expected, result)
      
      
    end
  end
  describe ".load_date_rotation" do
    it "returns a date rotation as array if given valid input" do
      rotator = Rotator.new
      date = '020315'
             
      expected = [9, 2, 2, 5]
      result = rotator.load_date_rotation(date, expected.length)
      
      assert_equal(expected, result)
    end
  end
  describe ".load_key_rotation" do
    it "returns a key rotation as array if given valid input" do
      rotator = Rotator.new
      key = '41521'
             
      expected = [41, 15, 52, 21]
      result = rotator.load_key_rotation(key)
      
      assert_equal(expected, result)
    end
  end
end

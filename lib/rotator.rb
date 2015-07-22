require 'pry'
require './lib/char_map'

class Rotator
  attr_accessor :rotations
  def initialize
    @rotations =  []
    @char_map = CharMap.new
  end
  def load_rotations(key, date)
    key_rotations = load_key_rotation(key)
    date_rotations = load_date_rotation(date, 4)

    @rotations  = key_rotations.map.with_index do |digit, index|
      digit + date_rotations[index]
    end
  end
  
  def load_key_rotation(key)
    key_rotations = key.split('').map.with_index do |digit, index|
      if key[index+1]
         key[index] + key[index + 1]
      else
        key[index]
      end
    end
    
    key_rotations.pop
    key_rotations.map(&:to_i)     
  end
  
  def load_date_rotation(date, length)
    date_squared = date.to_i ** 2     
    rotation_key = date_squared.to_s[-length..-1]     
    
    rotation_key.split('').map(&:to_i)
  end
  
end
class LuckyNumber
  attr_accessor :start, :finish, :indexes

  def initialize(start, finish)
    @start = start
    @finish = finish
    # creates an array on end value numbers
  end 

  def lucky_numbers 
    current = @start 
    digits = @start.to_s.scan(/./).map{|e| e.to_i}
    left = 0
    puts rightEquation(digits, left)
  end 

  def rightEquation(digits, left) 
    puts digits.length - 1
    
    return [7 - digits[left], 16 - digits[left]]
  end 
end 

l1 = LuckyNumber.new(100, 200)
l1.lucky_numbers
# 1006
# 1015
# 1024
# 1033
# 1096
# 2005
# 2014

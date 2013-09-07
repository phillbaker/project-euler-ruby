# 2520 is the smallest number that can be divided by each of the numbers from
# 1 to 10 without any remainder. What is the smallest positive number that is
# evenly divisible by all of the numbers from 1 to 20?

# I.e. Find LCM of 1...20.
# Naive multiple of 1...20 is 1*2*...*20.

# LCM will also be a factor of prime numbers in (1,20) like 3, 5, 7, 11, 13,
# 17, 19...anything that's divisible by 4 and 5 is also divisible by 20.
# Approach: multiply largest primes, then other common factors as necessary.

others = [2,4,6,8,9,10,12,14,15,16,18,20]
primes = [3,5,7,11,13,17,19] 4,
# product = primes.reduce(1, :*)

# 232792560

def divisible?(int)
  20.step(2, -1) do |i|
    if int % i != 0
      puts "not divisible by #{i}"
      return false 
    end
  end
  true
end

# other = others.last
# while(!divisible?(product) || others.empty?)
#   product *= other
#   others.pop
# end

# p others
# puts product
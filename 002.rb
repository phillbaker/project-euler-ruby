# Each new term in the Fibonacci sequence is generated by adding the previous
# two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not
# exceed four million, find the sum of the even-valued terms.

n = 0
n_1 = 0
n_2 = 1
sum = 0
while(n <= 4*10**6) do
  n = n_2 + n_1
  n_1 = n_2
  n_2 = n

  sum += n if n % 2 == 0
end

puts sum
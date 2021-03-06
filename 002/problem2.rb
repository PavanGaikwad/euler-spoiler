# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

limit = 4000000

previous_num = 1
current_num = 2
sum = current_num
while true
	next_num = current_num + previous_num
	if next_num > limit
		break
	end
	sum += next_num if next_num % 2 == 0
	previous_num = current_num
	current_num = next_num
end

puts sum
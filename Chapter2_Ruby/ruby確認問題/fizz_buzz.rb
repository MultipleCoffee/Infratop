def fizz_buzz(number)
	if number % 15 == 0
		"fizz_buzz"
	elsif number % 3 == 0
		"fizz"
	elsif number % 5 == 0
		"buzz"
	else
		"あなたはfizzでもbuzzでもない"
	end
end

puts "1以上の数字を入力してください"

number = gets.to_i

puts "結果は、、、"

puts fizz_buzz(number)
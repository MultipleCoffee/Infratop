# じゃんけんをして、勝ち負けを判定させましょう。（相手の出す手は乱数で決めましょう）
#  以下は出力例です。
#  -----------------
#  最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# 0
# あなたの手:グー、相手の手:チョキ
# あなたの勝ちです
# -----------------
# 以下は例外を入力した時の出力例です。
# -----------------
# 最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# 3
# 入力された値が無効です
# 最初はグー、じゃんけん...
# [0]:グー
# [1]:チョキ
# [2]:パー
# ...

def janken(input)

	hands = [:グー, :チョキ, :パー]
	random = rand(3)

	while input == random do
		puts "あなたの手:#{hands[input]}、相手の手:#{hands[random]}\nあいこで"
		puts "[0]:グー\n[1]:チョキ]\n[2]:パー"
		input = gets.to_i

		while input >= 3 do
			puts "入力された値が無効です"
			puts "最初はグー、じゃんけん..."
			puts "[0]:グー\n[1]:チョキ]\n[2]:パー"
			input = gets.to_i
		end
	end

	if input == 0 && random == 1
		return "あなたの手:#{hands[input]}、相手の手:#{hands[random]}\nあなたの勝ちです"
	elsif input == 1 && random == 2
		return "あなたの手:#{hands[input]}、相手の手:#{hands[random]}\nあなたの勝ちです"
	elsif input == 2 && random == 0
		return "あなたの手:#{hands[input]}、相手の手:#{hands[random]}\nあなたの勝ちです"
	else
		return "あなたの手:#{hands[input]}、相手の手:#{hands[random]}\nあなたの負けです"
	end

end


puts "最初はグー、じゃんけん..."
puts "[0]:グー\n[1]:チョキ]\n[2]:パー"
input = gets.to_i

while input >= 3 do
	puts "入力された値が無効です"
	puts "最初はグー、じゃんけん..."
	puts "[0]:グー\n[1]:チョキ]\n[2]:パー"
	input = gets.to_i
end

puts janken(input)

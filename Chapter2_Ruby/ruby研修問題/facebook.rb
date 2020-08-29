# 「FaceBook」
# 以下の条件に従って、1から100までの数字を出力しましょう。
# - 条件
#  - 値が3で割り切れるときは'face'と出力する。
#  - 値が5で割り切れるときは'book'と出力する。
#  - 値が15で割り切れるときは'facebook'と出力する。
#  - それ以外の場合、値をそのまま出力する。

def facebook(number)
	if number % 15 == 0
		"facebook"
	elsif number % 3 == 0
		"face"
	elsif number % 5 == 0
		"book"
	else number

	end
end

number = 1

while number <= 100 do

	puts facebook(number)

	number += 1

end
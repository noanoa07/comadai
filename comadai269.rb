# encoding: utf-8

=begin
たけしのコマ大数学科 第269回 2012.5.21放送
「コラッツの問題」
1より大きい自然数nに対して、次の操作を結果が1になるまで続ける。
(a) nが奇数 → この数に1を加える
(b) nが偶数 → この数を2で割る
この操作で1に到達するために必要な操作回数をf(n)で表す時、
1からnまでのf(n)の和をg(N)とするとg(32)は？
=end

puts("数字を入力してください。") # nを入力；g(32)なら 32
g_num = gets.to_i
g_sum = 0

g_num.downto(1) do |n|
  f_num = n
  f_count = 0
  
  while n != 1
    if n % 2 == 0
      n = n / 2
      f_count += 1
    else
      n = n + 1
      f_count += 1
    end
  end
  puts("f(#{f_num}): #{f_count}")
  g_sum = g_sum + f_count
end

puts("g(#{g_num}): #{g_sum}")

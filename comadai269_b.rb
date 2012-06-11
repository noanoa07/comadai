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

# クラスを使う。アイデア段階

class N_method(n)
  def initialize
    @count = 0
    @n = n
  end
  
  def odd_method(n) 
    @count = @count + 1
    n = n /2
  end

  def even_method(n)
    @count = @count + 1
    n = n + 1
  end
end

def odd_even(n)
  odd_even = n % 2
end
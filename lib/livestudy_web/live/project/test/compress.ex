defmodule Compress do
  def compress(s,n) do
    s
    |> String.codepoints
    |> Enum.chunk_every(n)
    |> Enum.map(&Enum.join/1)
    |> Enum.reduce(["","",0],&reducer/2)
    |> make
  end
  def reducer(x, acc = [a,b,c]) do
    case x == b do
      true -> [a, b, c + 1]
      false -> [make(acc),x,1]
    end
  end
  def make([a,b,c]) do
    case c > 1 do
      true -> "#{a}#{c}#{b}"
      false -> "#{a}#{b}"
    end
  end
  def compress_all(s) do
    1 .. String.length(s)
    |> Enum.map(fn i -> compress(s,i)  end)
  end
  def solution(s) do
    s
    |> compress_all
    |> Enum.map(fn str -> str |> String.length  end)
    |> Enum.min
  end
end

# 핵심 로직 :: 리듀스 활용
# compress("abababcdcdㅇㅇㅇㅇ",2)
# ["","",0]
# ["", "ab", 1]
# ["", "ab", 2]
# ["", "ab", 3]
# ["3ab", "cd", 1]
# ["3ab", "cd", 2]
# ["3ab2cd", "ㅇㅇ", 1]
# ["3ab2cd", "ㅇㅇ", 2]
# "3ab2cd2ㅇㅇ"

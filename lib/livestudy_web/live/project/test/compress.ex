defmodule Compress.Test1 do
  def chunk(s,n) do
    s
    |> String.codepoints
    |> Enum.chunk_every(n)
    |> Enum.map(&Enum.join/1)
  end
  def make([a,l,c]) do
    case c > 1 do
      true -> "#{a}#{c}#{l}"
      false -> "#{a}#{l}"
    end
  end
end

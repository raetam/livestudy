defmodule Chunk do
  def chunk1(s,n) do
    case s |> String.length <= n-1 do
      true -> [s]
      false -> [s |> String.slice(0..n-1), chunk1(s |> String.slice(n..-1),n) ] |> List.flatten
    end
  end
  def chunk2(s,n) do
    s
    |> String.split("")
    |> Enum.filter(fn a -> !(a == "") end ) #
    |> Enum.chunk_every(n)
    |> Enum.map(fn a -> a |> Enum.join end)
  end
  def chunk3(s,_n) do
    for <<x::binary-2 <- s>>, do: x
  end
  def chunk4(s,n) do
    s
    |> String.codepoints
    |> Enum.chunk_every(n)
    |> Enum.map(&Enum.join/1)
  end

end

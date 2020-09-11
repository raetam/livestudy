defmodule LivestudyWeb.TestLive do
  use LivestudyWeb, :live_view
  alias LivestudyWeb.V

  def mount(_params, _session, socket) do
    socket = assign(
      socket,
      o1: %{+: 0, -: 0,state: 0}
      )
    {:ok, socket}
  end
  def solution(s) do
     0 .. (s|> String.length)
    #  |> Enum.map(fn i -> compress(s,i)  end)
     |> Enum.map(fn str -> str |> String.length  end)
     |> Enum.min
  end
  def chunk(s,n) do
    s
    |> String.codepoints
    |> Enum.chunk_every(n)
    |> Enum.map(&Enum.join/1)
  end
end

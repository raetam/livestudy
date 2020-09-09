defmodule ServerWeb.Templates.Layout.Root do
def title(conn_path_info) do
  case conn_path_info |> Enum.at(0) == nil do
    true -> "LIVE STUDY"
    false -> "LIVE #{ conn_path_info |> Enum.at(0) |> String.upcase() }"
  end
end
end

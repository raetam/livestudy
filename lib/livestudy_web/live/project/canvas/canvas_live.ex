defmodule LivestudyWeb.CanvasLive do
  use LivestudyWeb, :live_view
  alias LivestudyWeb.V
  def mount(_params, _session, socket) do
    socket = assign(
      socket,
      o1: %{+: 0, -: 0,state: 0}
      )
    {:ok, socket}
  end


end

defmodule LivestudyWeb.V.Canvas do
  use LivestudyWeb, :view
  alias LivestudyWeb.V
  def render_board(w,h) do
    """
    <svg width="300" height="300" style="#{V.style_desc(w,h)}" phx-window-keydown="keystroke">
      <rect width="#{w}" height="#{h}" style="fill:rgb(0,0,0);" />
      #{render_points()}
    </svg>
    """
  end
  defp render_points do
    """
      <image href="https://storage.googleapis.com/iex/api/logos/FB.png" width="20" height="20"
        x="#{120}" y="#{120}"
         />
    """
  end


end

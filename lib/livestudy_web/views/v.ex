defmodule LivestudyWeb.V do
  use LivestudyWeb, :view

  def style_desc(w,h) do
    "
    display: grid ;
      color: white ; width: #{w}px;height: #{h}px;
      border: 1px solid #ccc;
      border-radius: 4px; margin: 0px;
     "
  end
end

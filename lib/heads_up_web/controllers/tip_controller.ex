defmodule HeadsUpWeb.TipController do
  use HeadsUpWeb, :controller

  def index(conn, _params) do
    emojis = ~w(💚 💜 💙) |> Enum.random() |> String.duplicate(5)
    tips = HeadsUp.Tips.list_tips()
    render(conn, :index, tips: tips, emojis: emojis)
  end
end

defmodule PhoenixTestWeb.RoomChannel do
  use PhoenixTestWeb, :channel

  def join("room:lobby", _payload, socket) do
    {:ok, socket}
  end

  def handle_in("new_msg", %{"body" => body}, socket) do
    broadcast!(socket, "new_msg", %{body: body, logs: "Tasty legs"})
    {:noreply, socket}
  end
end

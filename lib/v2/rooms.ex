# Code generated by `$ mix hipchat.generate`
defmodule Hipchat.V2.Rooms do
  @moduledoc """
  HipChat V2 Rooms API module.
  """

  alias Hipchat.{Client, Httpc}

  @endpoint "https://api.hipchat.com/v2"

  @doc """
  [https://www.hipchat.com/docs/apiv2/method/send_room_notification](https://www.hipchat.com/docs/apiv2/method/send_room_notification)
  """
  @spec send_room_notification(Client.t, String.t, map) :: Httpc.res_t
  def send_room_notification(client, room_id_or_name, body) do
    Httpc.request(:post,
                  "#{@endpoint}/room/#{room_id_or_name}/notification",
                  {:form, Map.to_list(body)},
                  Client.headers(client),
                  Client.options(client, []))
  end
end

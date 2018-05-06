# Code generated by `$ mix hipchat.generate`
defmodule Hipchat.V2.Integrations do
  @moduledoc """
  HipChat V2 Integrations API module.
  """

  alias Hipchat.{Client, Httpc}

  @endpoint "https://api.hipchat.com/v2"

  @doc """
  [https://www.hipchat.com/docs/apiv2/method/addon_ui_update](https://www.hipchat.com/docs/apiv2/method/addon_ui_update)
  """
  @spec addon_ui_update(Client.t, map) :: Httpc.res_t
  def addon_ui_update(client, body) do
    Httpc.request(:post,
                  "#{@endpoint}/addon/ui",
                  body,
                  Client.headers(client),
                  Client.options(client, []))
  end

  @doc """
  [https://www.hipchat.com/docs/apiv2/method/create_integration_link](https://www.hipchat.com/docs/apiv2/method/create_integration_link)
  """
  @spec create_integration_link(Client.t, map) :: Httpc.res_t
  def create_integration_link(client, body) do
    Httpc.request(:post,
                  "#{@endpoint}/addon/link",
                  body,
                  Client.headers(client),
                  Client.options(client, []))
  end

  @doc """
  [https://www.hipchat.com/docs/apiv2/method/delete_integration_link](https://www.hipchat.com/docs/apiv2/method/delete_integration_link)
  """
  @spec delete_integration_link(Client.t, String.t) :: Httpc.res_t
  def delete_integration_link(client, token) do
    Httpc.request(:delete,
                  "#{@endpoint}/addon/link/#{token}",
                  "",
                  Client.headers(client),
                  Client.options(client, []))
  end

  @doc """
  [https://www.hipchat.com/docs/apiv2/method/room_addon_ui_update](https://www.hipchat.com/docs/apiv2/method/room_addon_ui_update)
  """
  @spec room_addon_ui_update(Client.t, String.t, map) :: Httpc.res_t
  def room_addon_ui_update(client, room_id_or_name, body) do
    Httpc.request(:post,
                  "#{@endpoint}/addon/ui/room/#{room_id_or_name}",
                  body,
                  Client.headers(client),
                  Client.options(client, []))
  end

  @doc """
  [https://www.hipchat.com/docs/apiv2/method/user_addon_ui_update](https://www.hipchat.com/docs/apiv2/method/user_addon_ui_update)
  """
  @spec user_addon_ui_update(Client.t, String.t, map) :: Httpc.res_t
  def user_addon_ui_update(client, user_id_or_email, body) do
    Httpc.request(:post,
                  "#{@endpoint}/addon/ui/user/#{user_id_or_email}",
                  body,
                  Client.headers(client),
                  Client.options(client, []))
  end

  @doc """
  [https://www.hipchat.com/docs/apiv2/method/user_in_room_addon_ui_update](https://www.hipchat.com/docs/apiv2/method/user_in_room_addon_ui_update)
  """
  @spec user_in_room_addon_ui_update(Client.t, String.t, String.t, map) :: Httpc.res_t
  def user_in_room_addon_ui_update(client, room_id_or_name, user_id_or_email, body) do
    Httpc.request(:post,
                  "#{@endpoint}/addon/ui/room/#{room_id_or_name}/user/#{user_id_or_email}",
                  body,
                  Client.headers(client),
                  Client.options(client, []))
  end
end

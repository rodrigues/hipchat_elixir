# Code generated by `$ mix hipchat.generate`
defmodule Hipchat.V2.Extensions do
  @moduledoc """
  HipChat V2 Extensions API module.
  """

  alias Hipchat.{Client, Httpc}

  @endpoint "https://api.hipchat.com/v2"

  @doc """
  [https://www.hipchat.com/docs/apiv2/method/create_global_action](https://www.hipchat.com/docs/apiv2/method/create_global_action)
  """
  @spec create_global_action(Client.t, String.t, map) :: Httpc.res_t
  def create_global_action(client, key, body) do
    Httpc.request(:put,
                  "#{@endpoint}/extension/action/#{key}",
                  body,
                  Client.headers(client),
                  Client.options(client, []))
  end

  @doc """
  [https://www.hipchat.com/docs/apiv2/method/delete_global_action](https://www.hipchat.com/docs/apiv2/method/delete_global_action)
  """
  @spec delete_global_action(Client.t, String.t) :: Httpc.res_t
  def delete_global_action(client, key) do
    Httpc.request(:delete,
                  "#{@endpoint}/extension/action/#{key}",
                  "",
                  Client.headers(client),
                  Client.options(client, []))
  end

  @doc """
  [https://www.hipchat.com/docs/apiv2/method/get_global_action](https://www.hipchat.com/docs/apiv2/method/get_global_action)
  """
  @spec get_global_action(Client.t, String.t) :: Httpc.res_t
  def get_global_action(client, key) do
    Httpc.request(:get,
                  "#{@endpoint}/extension/action/#{key}",
                  "",
                  Client.headers(client),
                  Client.options(client, []))
  end
end

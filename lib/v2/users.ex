# Code generated by `$ mix hipchat.generate`
defmodule Hipchat.V2.Users do
  @moduledoc """
  HipChat V2 Users API module.
  """

  alias Hipchat.{Client, Httpc}

  @endpoint "https://api.hipchat.com/v2"

  @doc """
  [https://www.hipchat.com/docs/apiv2/method/get_all_users](https://www.hipchat.com/docs/apiv2/method/get_all_users)
  """
  @spec get_all_users(Client.t, list) :: Httpc.res_t
  def get_all_users(client, query_params) do
    Httpc.request(:get,
                  "#{@endpoint}/user",
                  "",
                  Client.headers(client),
                  Client.options(client, query_params))
  end
end

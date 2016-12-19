# Code generated by `$ mix hipchat.generate`
defmodule Hipchat.V2.Api.Users do
  @moduledoc """
  HipChat V2 Users API module.
  """

  alias Hipchat.V2.Client

  @doc """
  List all users in the group.

  Authentication required, with scope view_group.

  Accessible by group clients, users.

  https://www.hipchat.com/docs/apiv2/method/get_all_users
  """
  @spec get_all_users(Client.t, list) :: Client.res_t
  def get_all_users(client, query_params) do
    Client.send_request(client, :get, "/user", query_params, nil)
  end
end
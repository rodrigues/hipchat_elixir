# Code generated by `$ mix hipchat.generate`
defmodule Hipchat.V2.Api.Capabilities do
  @moduledoc """
  HipChat V2 Capabilities API module.
  """

  alias Hipchat.V2.Client

  @doc """
  Gets the addon capabilities descriptor schema

  Authentication not required.

  https://www.hipchat.com/docs/apiv2/method/get_addon_capabilities_schema
  """
  @spec get_addon_capabilities_schema(Client.t, list) :: Client.res_t
  def get_addon_capabilities_schema(client, query_params) do
    Client.send_request(client, :get, "/capabilities/addon/schema", query_params, nil)
  end

  @doc """
  Gets the capabilities descriptor for HipChat

  Authentication not required.

  https://www.hipchat.com/docs/apiv2/method/get_capabilities
  """
  @spec get_capabilities(Client.t) :: Client.res_t
  def get_capabilities(client) do
    Client.send_request(client, :get, "/capabilities", [], nil)
  end
end

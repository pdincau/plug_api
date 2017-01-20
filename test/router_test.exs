defmodule RouterTest do
  use ExUnit.Case, async: true
  use Plug.Test

  @opts PlugApi.Router.init([])

  test "returns pong" do
    # Create a test connection
    conn = conn(:get, "/ping")

    # Invoke the plug
    conn = PlugApi.Router.call(conn, @opts)

    # Assert the response and status
    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "pong"
  end
end

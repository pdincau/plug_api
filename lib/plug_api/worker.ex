defmodule PlugApi.Worker do

  def start_link do
      Plug.Adapters.Cowboy.http(PlugApi.Router, [], port: 8080)
  end

end

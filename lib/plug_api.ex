defmodule PlugApi do
  use Application

  def start(_type, _args) do
    PlugApi.Supervisor.start_link
  end
end

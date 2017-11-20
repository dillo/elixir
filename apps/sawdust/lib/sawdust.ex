defmodule Sawdust do
  use Application

  # def start(_type, _args) do
  #   IO.puts "Firing up the Table Saw!"

  #   Sawdust.Supervisor.start()
  # end

  def start(_type, _args) do
    children = []
    opts = [strategy: :one_for_one, name: Sawdust.Supervisor]

    Supervisor.start_link(children, opts)
  end
end

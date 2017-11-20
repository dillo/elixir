defmodule Sawdust.MakeSawdust do
  @name :make_sawdust

  alias Sawdust.Defaults
  alias Sawdust.State

  use GenServer

  #Client Interface
  def start_link(_arg) do
    IO.puts "Making Saw Dust!"

    GenServer.start_link(@name, %State{}, name: @name)
  end

  def recent_dusts do
    GenServer.call @name, :recent_dusts
  end

  #Server Interface
  def init(state) do
    dusts = Defaults.fetch_recent_dusts_from_service()
    new_state = %{ state | dusts: dusts }

    {:ok, new_state}
  end

  def handle_call(:recent_dusts, _from, state) do
    {:reply, state.dusts, state}
  end
end

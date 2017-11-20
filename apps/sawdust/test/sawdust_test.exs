defmodule SawdustTest do
  use ExUnit.Case
  doctest Sawdust

  test "greets the world" do
    assert Sawdust.hello() == :world
  end
end

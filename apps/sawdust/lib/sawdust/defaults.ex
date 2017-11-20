defmodule Sawdust.Defaults do
  def fetch_recent_dusts_from_service do
    %{ dusts: [{ "123abc", "foo", ["a", "b"] },
                  { "456def", "bar", ["a", "b"] }] }
  end
end

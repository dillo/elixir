defmodule Fibonacci.Fib do
  def fib_it(0), do: 0
  def fib_it(1), do: 1

  def fib_it(n) when n > 0 and is_number(n) do
    fib_it(n - 1) + fib_it(n - 2)
  end

  def fib_it(_), do: IO.inspect "Not a valid Fib!"
end

alias Fibonacci.Fib

IO.inspect Fib.fib_it(5)

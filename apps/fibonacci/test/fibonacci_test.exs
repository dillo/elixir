defmodule FibonacciTest do
  use ExUnit.Case
  alias Fibonacci.Fib

  test "when 0 it returns a 0" do
    assert Fib.fib_it(0) == 0
  end

  test "when 1 it returns a 1" do
    assert Fib.fib_it(1) == 1
  end

  test "when not a vaild entry" do
    assert Fib.fib_it("abc") == "Not a valid Fib!"
  end

  test "when a suitable entry" do
    assert Fib.fib_it(8) == 21
  end
end

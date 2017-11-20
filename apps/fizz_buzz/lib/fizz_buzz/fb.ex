defmodule FizzBuzz.Fb do
  def fizzbuzz([head | tail]) do
    word(rem(head, 3), rem(head, 5), head)
    fizzbuzz(tail)
  end

  def fizzbuzz([]), do: nil

  def word(0, 0, _), do: IO.inspect "FizzBuzz"
  def word(0, _, _), do: IO.inspect "Fizz"
  def word(_, 0, _), do: IO.inspect "Buzz"
  def word(_, _, n), do: IO.inspect n

  def start(num) when num > 0 and is_number(num) do
    fizzbuzz(Enum.to_list 1..num)
  end

  def start(_), do: IO.inspect "Please enter a valid number!"
end

alias FizzBuzz.Fb

IO.inspect Fb.start(100)


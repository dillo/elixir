defmodule FizzBuzzTest do
  use ExUnit.Case
  alias FizzBuzz.Fb

  test "when divisible by both 3 and 5" do
    assert Fb.word(rem(15, 3), rem(15, 5), 15) == "FizzBuzz"
  end

  test "when divisible by 3 only" do
    assert Fb.word(rem(6, 3), rem(6, 5), 6) == "Fizz"
  end

  test "when divisible by 5 only" do
    assert Fb.word(rem(10, 3), rem(10, 5), 10) == "Buzz"
  end

  test "when not divisible by either 3 or 4" do
    assert Fb.word(rem(7, 3), rem(7, 5), 7) == 7
  end

  test "when list is empty" do
    assert Fb.fizzbuzz([]) == nil
  end

  test "when negative number" do
    assert Fb.start(-100) == "Please enter a valid number!"
  end

  test "when anything other than a number" do
    assert Fb.start("13&^") == "Please enter a valid number!"
  end
end

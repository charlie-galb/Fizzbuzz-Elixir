defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "greets the world" do
    assert Fizzbuzz.hello() == :world
  end
  test "Outputs the number unchanged if not divisible by 3 or five" do
    assert Fizzbuzz.single(1) == 1
  end
end

defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "Outputs the number unchanged if not divisible by 3 or five" do
    assert Fizzbuzz.play(1) == 1
  end
  test "Outputs 'fizz' if input is divisible by 3 but not five" do
    assert Fizzbuzz.play(3) == "fizz"
  end
  test "Outputs 'buzz' if input is divisible by 5 but not 3" do
    assert Fizzbuzz.play(5) == "buzz"
  end
  test "Outputs 'fizzbuzz' if input is divisible by 3 and 5" do
    assert Fizzbuzz.play(15) == "fizzbuzz"
  end
end

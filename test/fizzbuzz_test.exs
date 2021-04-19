defmodule FizzbuzzTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest Fizzbuzz

  test "Outputs the number unchanged if not divisible by 3 or five" do
    assert capture_io(fn -> Fizzbuzz.play(1) end) == "1\n"
  end
  test "Outputs 'fizz' if input is divisible by 3 but not five" do
    assert capture_io(fn -> Fizzbuzz.play(3) end) == "fizz\n"
  end
  test "Outputs 'buzz' if input is divisible by 5 but not 3" do
    assert capture_io(fn -> Fizzbuzz.play(5) end) == "buzz\n"
  end
  test "Outputs 'fizzbuzz' if input is divisible by 3 and 5" do
    assert capture_io(fn -> Fizzbuzz.play(15) end) == "fizzbuzz\n"
  end
  test "Outputs: 1,2,'fizz' when give 1..3" do
    assert capture_io(fn -> Fizzbuzz.play(1..3) end) == "1\n2\nfizz\n"
  end
end

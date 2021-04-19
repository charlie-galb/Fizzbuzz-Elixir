defmodule Fizzbuzz do

  def play(num) when is_integer(num) do 
    cond do
      is_fizzbuzz(num) -> IO.puts "fizzbuzz"
      is_fizz(num) -> IO.puts "fizz"
      is_buzz(num) -> IO.puts "buzz"
      true -> IO.puts num
    end
  end

  def play(range) when is_map(range) do
    Enum.map(range, fn(num) -> play(num) end)
  end

  defp is_fizz(num) do
    rem(num, 3) === 0 
  end

  defp is_buzz(num) do 
    rem(num, 5) === 0
  end

  defp is_fizzbuzz(num) do
    is_fizz(num) && is_buzz(num)
  end

end

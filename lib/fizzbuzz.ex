defmodule Fizzbuzz do

  def play(num) do 
    cond do
      is_fizzbuzz(num) -> "fizzbuzz"
      is_fizz(num) -> "fizz"
      is_buzz(num) -> "buzz"
      true -> num
    end
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

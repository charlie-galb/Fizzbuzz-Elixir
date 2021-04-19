defmodule Fizzbuzz do

  def play(num) do 
    cond do
      is_fizz(num) -> "fizz"
      true -> num
    end
  end

  defp is_fizz(num) do
    rem(num, 3) === 0 
  end

  def hello do
    :world
  end

end

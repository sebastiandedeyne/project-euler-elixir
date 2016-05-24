defmodule Math do
  def sum([head | tail]) do
    head + sum(tail)
  end

  def sum([]) do
    0
  end

  def is_factor(factor, number) do
    rem(number, factor) === 0
  end

  def is_even(number) do
    is_factor(2, number)
  end

  def smallest_factor(number) do
    2..number
    |> Stream.filter(fn x -> Math.is_factor(x, number) end)
    |> Stream.take(1)
    |> Enum.to_list
    |> hd
  end

  def largest_factor(number) do
    round(number / smallest_factor(number))
  end
end

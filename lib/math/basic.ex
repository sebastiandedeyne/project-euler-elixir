defmodule Math do
  def sum([head | tail]) do
    head + sum(tail)
  end

  def sum([]) do
    0
  end

  def multiply([head | tail]) do
    head * multiply(tail)
  end

  def multiply([]) do
    1
  end

  def factor?(factor, number) do
    rem(number, factor) == 0
  end

  def even?(number) do
    factor?(2, number)
  end

  def filter_even(list) do
    Enum.filter(list, &even?(&1))
  end

  def smallest_factor(number) do
    2..number
    |> Stream.filter(fn x -> Math.factor?(x, number) end)
    |> Stream.take(1)
    |> Enum.to_list
    |> hd
  end

  def largest_factor(number) do
    round(number / smallest_factor(number))
  end
end

defmodule Euler.Problem4 do
  @moduledoc """
  A palindromic number reads the same both ways. The largest palindrome made
  from the product of two 2-digit numbers is 9009 = 91 x 99.

  Find the largest palindrome made from the product of two 3-digit numbers.
  """

  @doc """
  iex> Euler.Problem4.solve
  906609
  """
  def solve do
    possible_numbers
    |> Enum.filter(&palindrome?(&1))
    |> Enum.sort
    |> Enum.reverse
    |> hd
  end

  def possible_numbers do
    100..999
    |> Enum.reduce([], fn x, list ->
      list ++ ( 100..999 |> Enum.reduce([], fn y, list -> list ++ [x * y] end) )
    end)
    |> Enum.uniq
  end

  def palindrome?(number) do
    to_string(number) == (to_string(number) |> String.reverse)
  end
end

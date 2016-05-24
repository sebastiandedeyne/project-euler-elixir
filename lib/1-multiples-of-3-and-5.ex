defmodule Euler.Problem1 do
  @moduledoc """
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these
  multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.
  """

  @doc """
  iex> Euler.Problem1.solve
  233168
  """
  def solve do
    0..999
    |> Enum.filter(fn i -> Math.is_factor(3, i) || Math.is_factor(5, i) end)
    |> Math.sum
  end
end

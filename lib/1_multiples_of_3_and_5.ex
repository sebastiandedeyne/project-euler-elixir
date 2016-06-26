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
    1..999
    |> Enum.filter(fn x -> Math.factor?(3, x) || Math.factor?(5, x) end)
    |> Math.sum
  end
end

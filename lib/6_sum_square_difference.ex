defmodule Euler.Problem6 do
  @moduledoc """
  The sum of the squares of the first ten natural numbers is,

    1**2 + 2**2 + ... + 10**2 = 385

  The square of the sum of the first ten natural numbers is,

    (1 + 2 + ... + 10)**2 = 55**2 = 3025

  Hence the difference between the sum of the squares of the first ten natural
  numbers and the square of the sum is 3025 − 385 = 2640.

  Find the difference between the sum of the squares of the first one hundred
  natural numbers and the square of the sum.
  """

  @doc """
  iex> Euler.Problem6.solve
  25164150
  """
  def solve do
    sum_of_squares = 1..100
    |> Enum.reduce(0, fn x, acc -> acc + :math.pow(x, 2) end)
    |> round

    square_of_sum = 1..100
    |> Enum.sum
    |> :math.pow(2)
    |> round

    square_of_sum - sum_of_squares
  end
end

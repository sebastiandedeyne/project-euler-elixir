defmodule Euler.Problem3 do
  @moduledoc """
  The prime factors of 13195 are 5, 7, 13 and 29.

  What is the largest prime factor of the number 600851475143?
  """

  @doc """
  iex> Euler.Problem3.solve
  6857
  """
  def solve do
    Math.Prime.largest_prime_factor(600_851_475_143)
  end
end

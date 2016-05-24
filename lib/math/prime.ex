defmodule Math.Prime do
  @moduledoc """
  Helper module to work with prime numbers.
  """

  def is_prime(number) when number < 2 do
    false
  end

  def is_prime(number) do
    Math.largest_factor(number) === 1
  end

  def prime_factors(number) do
    smallest = smallest_prime_factor(number)

    if smallest === number,
      do: [number],
      else: [smallest] ++ prime_factors(round(number / smallest))
  end

  def largest_prime_factor(number) do
    factors = prime_factors(number)
    Enum.at(factors, Enum.count(factors) - 1)
  end

  def smallest_prime_factor(number) when number === 1 do
    nil
  end

  def smallest_prime_factor(number) do
    2..number
    |> Stream.filter(fn x -> is_prime(x) end)
    |> Stream.filter(fn x -> Math.is_factor(x, number) end)
    |> Stream.take(1)
    |> Enum.to_list
    |> hd
  end
end

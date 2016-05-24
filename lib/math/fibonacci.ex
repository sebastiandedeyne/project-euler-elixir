defmodule Math.Fibonacci do
  @moduledoc """
  Helper module to generate Fibonacci sequences.
  """

  def generate(limit) do
    generate([1, 2], limit)
  end

  defp generate(list, limit) do
    next = Enum.at(list, Enum.count(list) - 2) + Enum.at(list, Enum.count(list) - 1)

    if next < limit,
      do: generate(list ++ [next], limit),
      else: list
  end
end

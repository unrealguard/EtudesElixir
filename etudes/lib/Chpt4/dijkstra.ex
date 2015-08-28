defmodule Etudes.Chpt4.Dijkstra do
  @moduledoc """
  Implementation of the the greatest common diviser calculation
  using Dijkstra's algorithm.
  """
  @vsn 0.1

  @doc """
  Calculates the greatest common deviser between two numbers
  """

  @spec gcd(number(), number()) :: number()
  def gcd(a, b) do
    cond do
      a == b -> a
      a > b -> gcd(a - b, b)
      b > a -> gcd(a, b - a)
    end
  end
end

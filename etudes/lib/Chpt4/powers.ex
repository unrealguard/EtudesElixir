defmodule Etudes.Chpt4.Powers do
  import Kernel, except: [raise: 2, raise: 3]
  @moduledoc """
  Raises numbers to powers
  """

  @vsn 0.1

  @doc """
  raises a number to a power
  """

  @spec raise(number(), number()) :: number()

  def raise(_, 0) do
    1
  end

  def raise(base, power) when power > 0 do
    #base * raise(base, power - 1)
    raise(base, power, 1)
  end

  def raise(base, power) when power < 0 do
    1.0/ raise(base, -power)
  end

  @spec raise(number(), number(), number()) :: number()

  defp raise(_, 0, accumulator) do
    accumulator
  end

  defp raise(base, power, accumulator) do
    raise(base, power - 1, base * accumulator)
  end

  @doc """
  calculates the nth root of a number
  """

  @spec nth_root(number(), number()) :: number()

  def nth_root(x, n) do
    nth_root(x, n, x/2.0)
  end

  @spec nth_root(number(), number(), number()) :: number()
  defp nth_root(x, n, a) do
    #IO.puts("Current guess is #{a}")
    f = raise(a, n) - x
    f_prime = n * raise(a, n-1)
    next = a - (f/f_prime)
    change = abs(a - next)
    cond do
      change < 1.0e-8 -> next
      true -> nth_root(x, n, next)
    end
  end
end

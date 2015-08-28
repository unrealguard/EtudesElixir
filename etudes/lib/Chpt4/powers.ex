defmodule Etudes.Chpt4.Powers do
  import Kernel, except: [raise: 2]
  @moduledoc """
  Raises numbers to powers
  """

  @vsn 0.1

  @doc """
  raises a number to a power
  """

  @spec raise(number(), number()) :: number()

  def raise(base, power) do
    cond do
      power == 0 -> 1
      power == 1 -> base
      power > 1 -> base * raise(base, power - 1)
      power < 0 -> 1.0 / raise(base, power * -1)
    end
  end
end

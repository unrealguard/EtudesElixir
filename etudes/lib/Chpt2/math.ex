defmodule Etudes.Chpt2.Math do
  @moduledoc """
  Define several math helper functions
  """

  @doc """
  Sums 3 numbers defaulting two arguments to 3 and 7 respectfully
  """
  @spec sum(number(), number(), number()) :: number()
  def sum(a \\ 3, b, c \\ 7) do
    a + b + c
  end
end

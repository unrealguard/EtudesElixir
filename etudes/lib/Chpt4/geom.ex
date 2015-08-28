defmodule Etudes.Chpt4.Geom do
  @moduledoc """
  Geometric functions
  """
  @vsn 0.1

  @doc """
  Returns the area given a shape and two dimentions.
  Returns zero if the shape isn't one of :rectangle, :triangle, or :ellipse
  """

  @spec area({atom(), number(), number()}) :: number()

  def area({shape, dim1, dim2}) when dim1 >=0 and dim2 >=0 do
    case {shape, dim1, dim2} do
      {:rectangle, width, height} -> width * height
      {:triangle, base, height} -> (base * height) / 2.0
      {:ellipse, a, b} -> :math.pi() * a * b
      {_, _, _} -> 0
    end
  end
end

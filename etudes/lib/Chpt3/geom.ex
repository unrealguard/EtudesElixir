defmodule Etudes.Chpt3.Geom do
  @moduledoc """
  Geometric functions to support multiple geometric shapes.
  """
  @vsn 0.1

  @doc """
  area function that accepts a shape atom and two parameters to
  calculate the area of the shape.
  """

  @spec area({atom(), number(), number()}) :: number()

  def area({shape, dim1, dim2}) do
    area(shape, dim1, dim2)
  end

  @spec area(atom(), number(), number()) :: number()

  defp area(:rectangle, length, width) when length >=0 and width >=0 do
    length * width
  end

  defp area(:triangle, base, height) when base >=0 and height >=0 do
    base * height / 2.0
  end

  defp area(:ellipse, a, b) when a >=0 and b >=0 do
    :math.pi * a * b
  end

  defp area(_, _, _) do
    0
  end
end

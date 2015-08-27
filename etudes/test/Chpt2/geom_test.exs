defmodule Etudes.Chpt2.GeomTest do
  use ExUnit.Case, async: true

  test "Geom.area multiplies side1 by side2" do
    assert Etudes.Chpt2.Geom.area(3, 4) == 12
    assert Etudes.Chpt2.Geom.area(12, 7) == 84
  end
end

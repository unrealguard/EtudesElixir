defmodule Etudes.Chpt3.GeomTest do
  use ExUnit.Case, async: true

  test "calculates area of a rectangle" do
    assert Etudes.Chpt3.Geom.area({:rectangle, 3, 4}) == 12
  end

  test "calculates area of a triangle" do
    assert Etudes.Chpt3.Geom.area({:triangle, 3, 5}) == 7.5
  end

  test "calculates area of an ellipse" do
    assert Etudes.Chpt3.Geom.area({:ellipse, 2, 4}) == 25.132741228718345
  end

  test "given negative first value, return 0" do
    assert Etudes.Chpt3.Geom.area({:rectangle, -1, 4}) == 0
  end

  test "given negative second value, return 0" do
    assert Etudes.Chpt3.Geom.area({:triangle, 3, -4}) == 0
  end

  test "given both values are negative, throw an error" do
    assert Etudes.Chpt3.Geom.area({:ellipse, -3, -4}) == 0
  end

  test "calling private function that takes three params throw error" do
    assert_raise UndefinedFunctionError, fn ->
      Etudes.Chpt3.Geom.area(:rectangle, 3, 4)
    end
  end
end

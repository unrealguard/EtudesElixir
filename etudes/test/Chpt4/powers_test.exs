defmodule Etudes.Chpt4.PowersTest do
  use ExUnit.Case, async: true

  test "a number raised to the zero power is one" do
    assert Etudes.Chpt4.Powers.raise(5, 0) == 1
  end

  test "a number raised to the power one is itself" do
    assert Etudes.Chpt4.Powers.raise(5, 1) == 5
  end

  test "5 raised to the 3rd power is 125" do
    assert Etudes.Chpt4.Powers.raise(5, 3) == 125
  end

  test "3 raised to the 4th power is 81" do
    assert Etudes.Chpt4.Powers.raise(3, 4) == 81
  end

  test "2 raised to the 5th power is 16" do
    assert Etudes.Chpt4.Powers.raise(2, 5) == 32
  end

  test "2 raised to the -3rd power is 0.125" do
    assert Etudes.Chpt4.Powers.raise(2, -3) == 0.125
  end

  test "the cubed root of 27 is 3" do
    assert Etudes.Chpt4.Powers.nth_root(27, 3) == 3.0
  end

end

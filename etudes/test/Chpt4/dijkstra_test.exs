defmodule Etudes.Chpt4.DijkstraTest do
  use ExUnit.Case, async: true

  test "gcd of a number and itself is itself" do
    assert Etudes.Chpt4.Dijkstra.gcd(10, 10) == 10
  end

  test "gcd of 21 and 14 is 7" do
    assert Etudes.Chpt4.Dijkstra.gcd(21, 14) == 7
  end

  test "gcd of 14 and 21 is 7" do
    assert Etudes.Chpt4.Dijkstra.gcd(14, 21) == 7
  end

  test "gcd of 125 and 46 is 1" do
    assert Etudes.Chpt4.Dijkstra.gcd(125, 46) == 1
  end

  test "gcd of 120 and 36 is 12" do
    assert Etudes.Chpt4.Dijkstra.gcd(120, 36) == 12
  end
end

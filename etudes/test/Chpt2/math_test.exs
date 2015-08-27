defmodule Etudes.Chpt2.MathTest do
  use ExUnit.Case, async: true

  test "sum set param to undefaulted variable" do
    #11 + 22 + 33 = 66
    assert Etudes.Chpt2.Math.sum(11, 22, 33) == 66
    #11 + 22 + 7 = 40
    assert Etudes.Chpt2.Math.sum(11, 22) == 40
    #3 + 11 + 7 = 21
    assert Etudes.Chpt2.Math.sum(11) == 21
  end
end

defmodule WatermelonTest do
  use ExUnit.Case
  doctest Watermelon

  test "divide" do
    assert Watermelon.divide(2) == false
    assert Watermelon.divide(3) == false
    assert Watermelon.divide(4) == true
    assert Watermelon.divide(5) == false
    assert Watermelon.divide(6) == true
  end
end

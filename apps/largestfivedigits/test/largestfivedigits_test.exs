defmodule LargestfivedigitsTest do
  use ExUnit.Case
  doctest Largestfivedigits

  test "largest five digits" do
    assert Largestfivedigits.largest_five_digits(nil) != 0
    assert Largestfivedigits.largest_five_digits(nil) != nil
    assert Largestfivedigits.largest_five_digits(nil) == 99890
    assert Largestfivedigits.largest_five_digits("1234567898765" == 98765)
    assert Largestfivedigits.largest_five_digits("731674765" == 74765)
  end
end

defmodule IpvalidationTest do
  use ExUnit.Case
  doctest Ipvalidation

  test "validate ips" do
    assert Ipvalidation.validate("") == false
    assert Ipvalidation.validate("1,312") == false
    assert Ipvalidation.validate("11.312") == false
    assert Ipvalidation.validate("1.3.1.2.6") == false
    assert Ipvalidation.validate("01.3.1.2") == false
    assert Ipvalidation.validate("1.3.1.256") == false
    assert Ipvalidation.validate("1.3.1.255") == true
    assert Ipvalidation.validate("1.3.1.0") == true
  end
end

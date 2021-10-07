defmodule Ipvalidation do
  @moduledoc """
  Write an algorithm that will identify valid IPv4 addresses in dot-decimal format. IPs should be considered valid if they consist of four octets, with values between 0 and 255, inclusive.

  Valid inputs examples:
  Examples of valid inputs:
  1.2.3.4
  123.45.67.89
  Invalid input examples:
  1.2.3
  1.2.3.4.5
  123.456.78.90
  123.045.067.089
  Notes:
  Leading zeros (e.g. 01.02.03.04) are considered invalid
  """

  def validate(ip) do
    ip
    |> String.to_charlist()
    |> Enum.count() > 0 &&
      String.split(ip, ~r/\./)
      |> Enum.all?(fn octet ->
        is_number = not Regex.match?(~r/\D/, octet)
        first_char_not_zero = String.at(octet, 0) != "0"
        is_number && first_char_not_zero && String.to_integer(octet) < 256
      end)
  end
end

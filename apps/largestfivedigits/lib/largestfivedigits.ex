defmodule Largestfivedigits do
  @moduledoc """
  In the following 6 digit number:

  283910
  91 is the greatest sequence of 2 consecutive digits.

  In the following 10 digit number:

  1234567890
  67890 is the greatest sequence of 5 consecutive digits.

  Complete the solution so that it returns the greatest sequence of five consecutive digits found within the number given. The number will be passed in as a string of only digits. It should return a five digit integer. The number passed may be as large as 1000 digits.
  """
  def largest_five_digits(nil), do: 0

  def largest_five_digits(digits) do
    largest = 0

    digits_as_numbers =
      String.codepoints(digits)
      |> Enum.map(&String.to_integer/1)

    digits_as_numbers
    |> Enum.each(fn digit ->
      current_sequence =
        digits_as_numbers
        |> Enum.take(5)
        |> Enum.map(fn d -> Integer.to_string(d) end)
        |> Enum.reduce(fn elem, acc -> acc <> elem end)
        |> String.to_integer()

      if largest < current_sequence do
        largest = current_sequence
      end
    end)

    largest
  end
end

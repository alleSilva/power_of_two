defmodule PowerOfTwoTest do
  use ExUnit.Case

  test "returns a exponent from number in base 2" do
    assert PowerOfTwo.calc(1024) == "1024 true 10"
  end
end

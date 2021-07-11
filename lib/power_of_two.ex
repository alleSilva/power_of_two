defmodule PowerOfTwo do
  def calc_from_file(file_name) do
    "./#{file_name}"
    |> File.read!()
    |> String.trim()
    |> String.split("\n")
    |> Enum.map(&String.to_integer/1)
    |> Enum.each(fn num -> IO.puts(calc(num)) end)
  end

  def calc(num), do: divide_by_two(num, num, 1)

  defp divide_by_two(0, _, _), do: "0 false"

  defp divide_by_two(num, 2, acc2), do: "#{num} true #{acc2}"

  defp divide_by_two(num, 1, _acc2), do: "#{num} true 0"

  defp divide_by_two(num, acc1, acc2) do
    acc2 = acc2 + 1

    if rem(acc1, 2) == 0 do
      acc1 = div(acc1, 2)
      divide_by_two(num, acc1, acc2)
    else
      "#{num} false"
    end
  end
end

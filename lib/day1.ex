defmodule AdventOfCode.Day1 do
  def top_calories(calories_list, number_of_elves) do
    calories_list
    |> String.split("\n")
    |> Enum.map(&parse/1)
    |> Enum.chunk_by(&Kernel.is_nil/1)
    |> Enum.filter(&Enum.all?/1)
    |> Enum.map(&Enum.sum/1)
    |> Enum.sort(:desc)
    |> Enum.take(number_of_elves)
    |> Enum.sum
  end

  defp parse(input) do
    case input do
      "" -> nil
      _ -> String.to_integer(input)
    end
  end
end
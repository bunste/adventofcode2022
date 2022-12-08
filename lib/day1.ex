defmodule AdventOfCode.Day1 do
  def top_calories(calories_list, number_of_elves) do
    calories_list
    |> Enum.chunk_by(&Kernel.is_nil/1)
    |> Enum.filter(&Enum.all?/1)
    |> Enum.map(&Enum.sum/1)
    |> Enum.sort
    |> Enum.take(-1 * number_of_elves)
    |> Enum.sum
  end
end
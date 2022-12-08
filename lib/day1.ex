defmodule AdventOfCode.Day1 do
  def most_calories(calories_list) do
    calories_list
    |> Enum.chunk_by(&Kernel.is_nil/1)
    |> Enum.filter(&Enum.all?/1)
    |> Enum.map(&Enum.sum/1)
    |> Enum.max
  end
end
defmodule AdventOfCode.Day3 do
  def prio_score(rucksacks) do
    rucksacks
    |> String.split("\n")
    |> Enum.map(&String.graphemes/1)
    |> Enum.map(&split_compartments/1)
    |> Enum.map(&common_element/1)
    |> Enum.map(&value/1)
    |> Enum.sum
  end

  def prio_score_pt2(rucksacks) do
    rucksacks
    |> String.split("\n")
    |> Enum.map(&String.graphemes/1)
    |> Enum.chunk_every(3)
    |> Enum.map(&common_element/1)
    |> Enum.map(&value/1)
    |> Enum.sum
  end

  defp split_compartments(rucksack) do
    size = div(length(rucksack), 2)
    [Enum.take(rucksack, size), Enum.take(rucksack, -1 * size)]
  end

  defp value(type) do
    <<v::utf8>> = type
    if v >= 97 do
      v-96
    else
      v-38
    end
  end

  defp common_element([first, second | tail]) do
    intermediate = intersection(first, second) |> Enum.uniq
    common_element([intermediate | tail])
  end

  defp common_element(list), do: hd(hd(list))

  defp intersection(a, b) do
    tmp = a -- b
    a -- tmp
  end
end
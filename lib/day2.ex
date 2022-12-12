defmodule AdventOfCode.Day2 do
  def points_pt1(strategy_guide) do
    strategy_guide
    |> String.split("\n")
    |> Enum.map(&outcome/1)
    |> Enum.sum
  end

  def points_pt2(strategy_guide) do
    strategy_guide
    |> String.split("\n")
    |> Enum.map(&outcome_pt2/1)
    |> Enum.sum
  end

  defp outcome("A X"), do: 4
  defp outcome("A Y"), do: 8
  defp outcome("A Z"), do: 3
  defp outcome("B X"), do: 1
  defp outcome("B Y"), do: 5
  defp outcome("B Z"), do: 9
  defp outcome("C X"), do: 7
  defp outcome("C Y"), do: 2
  defp outcome("C Z"), do: 6

  defp outcome_pt2("A X"), do: 3
  defp outcome_pt2("A Y"), do: 4
  defp outcome_pt2("A Z"), do: 8
  defp outcome_pt2("B X"), do: 1
  defp outcome_pt2("B Y"), do: 5
  defp outcome_pt2("B Z"), do: 9
  defp outcome_pt2("C X"), do: 2
  defp outcome_pt2("C Y"), do: 6
  defp outcome_pt2("C Z"), do: 7
end
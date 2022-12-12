defmodule AdventOfCode.Day2 do
  @shape_score %{ "A" => 1, "B" => 2, "C" => 3 }

  # For part 1
  @shapes_aliases %{ "X" => "A", "Y" => "B", "Z" => "C" }

  # For part 2
  @losing_against %{ "A" => "C", "B" => "A", "C" => "B" }
  @winning_against %{ "A" => "B", "B" => "C", "C" => "A" }


  def points_part1(strategy_guide) do
    strategy_guide
    |> String.split("\n")
    |> Enum.map(&String.split(&1, " "))
    |> Enum.map(&preprocess_for_part1/1)
    |> Enum.map(&single_match_result/1)
    |> Enum.sum
  end

  defp preprocess_for_part1([opponent, me]), do: [opponent, @shapes_aliases[me]]

  def points_part2(strategy_guide) do
    strategy_guide
    |> String.split("\n")
    |> Enum.map(&String.split(&1, " "))
    |> Enum.map(&preprocess_for_part2/1)
    |> Enum.map(&single_match_result/1)
    |> Enum.sum
  end

  defp preprocess_for_part2([opponent, instruction]) do
    what_i_play =
      case instruction do 
        "X" ->
          @losing_against[opponent]
        "Y" -> 
          opponent
        "Z" ->
          @winning_against[opponent]
      end
    
    [opponent, what_i_play]
  end

  defp single_match_result([opponent, me]) do
    outcome(opponent, me) + @shape_score[me]
  end

  defp outcome("C", "A"), do: 6 # Rock defeats Scissors
  defp outcome("B", "C"), do: 6 # Scissors defeats Paper
  defp outcome("A", "B"), do: 6 # Paper defeats Rock

  defp outcome(opponent, me) when opponent == me, do: 3

  defp outcome(_, _), do: 0
end
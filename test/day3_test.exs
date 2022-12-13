defmodule AdventOfCode.Day3Test do
  use ExUnit.Case

  @module AdventOfCode.Day3

  test "solves a small example" do
    input = File.read!("ressources/day3_example.txt")

    assert @module.prio_score(input) == 157
  end

  test "it solves part 1 with the correct solution of 7691" do
    input = File.read!("ressources/day3_input.txt")

    assert @module.prio_score(input) == 7691
  end

  test "it solves part 2 with the correct solution of 2508" do
    input = File.read!("ressources/day3_input.txt")

    assert @module.prio_score_pt2(input) == 2508
  end
end
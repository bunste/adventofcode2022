defmodule AdventOfCode.Day2Test do
  use ExUnit.Case

  @module AdventOfCode.Day2

  test "solves a small example" do
    input = File.read!("test/day2_example.txt")

    assert @module.points_pt1(input) == 15
  end

  test "it solves part 1 with the correct solution of 11603" do
    input = File.read!("test/day2_part1.txt")

    assert @module.points_pt1(input) == 11603
  end

  test "it solves part 2 with the correct solution of 12725" do
    input = File.read!("test/day2_part1.txt")

    assert @module.points_pt2(input) == 12725
  end
end
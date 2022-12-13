defmodule AdventOfCode.Day1Test do
  use ExUnit.Case

  @module AdventOfCode.Day1

  test "solves a small example" do
    input = File.read!("ressources/day1_example.txt")

    assert @module.top_calories(input, 1) == 24000
  end

  test "it solves part 1 with the correct solution of 69836" do
    input = File.read!("ressources/day1_input.txt")

    assert @module.top_calories(input, 1) == 69836
  end

  test "it solves part 2 with the correct solution of 207968" do
    input = File.read!("ressources/day1_input.txt")

    assert @module.top_calories(input, 3) == 207968
  end
end
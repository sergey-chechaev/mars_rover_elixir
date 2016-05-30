defmodule MarsRover do
  defstruct x: "", y: "", direction: ""

  def get_grid(grid = %MarsRover.Grid{}) do
    "#{grid.x} #{grid.y}"
  end

  def where_am_i(structure = %MarsRover{}) do
    IO.puts "#{structure.x} #{structure.y} #{structure.direction}"
  end

  def go_to(string, structure = %MarsRover{} ) do
    list = String.codepoints(string)
    step(list, structure)
  end

  def step([head | tail], structure = %MarsRover{}) do
    case { head, structure.direction } do
      { "M", "N" } ->
        # IO.puts "test"
       where_am_i new_structure = %MarsRover{ y: structure.y + 1, x: structure.x , direction: structure.direction}
      { "M", "S" } ->
       where_am_i new_structure = %MarsRover{ y: structure.y - 1, x: structure.x , direction: structure.direction}
      # { "M", "W" } ->
      #   structure.x = structure.x - 1
      # { "M", "E" } ->
      #   structure.x = structure.x + 1
      _ ->
        "wrong path"
      end
    step(tail, new_structure)
  end

  def step([], structure) do
    IO.puts "rover is stop"
  end


end

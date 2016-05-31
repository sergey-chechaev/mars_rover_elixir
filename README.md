# MarsRover

**Example:**

```elixir
  iex> position = %MarsRover{x: 1, y: 2, direction: "N"}
  %MarsRover{direction: "N", x: 1, y: 2}
  
  iex> MarsRover.go_to("LMLMLMLMM", position)
  1 2 W
  0 2 W
  0 2 S
  0 1 S
  0 1 E
  1 1 E
  1 1 N
  1 2 N
  1 3 N
  rover is stop
  :ok
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add mars_rover to your list of dependencies in `mix.exs`:

        def deps do
          [{:mars_rover, "~> 0.0.1"}]
        end

  2. Ensure mars_rover is started before your application:

        def application do
          [applications: [:mars_rover]]
        end


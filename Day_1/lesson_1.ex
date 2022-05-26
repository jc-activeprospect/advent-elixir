defmodule Scanner do
  def depth_increases do
    # data = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]
    # data |> Enum.chunk_every(2, 1, :discard) |> Enum.filter(fn [x, y] -> y > x end) |> Enum.count()
    "inputs.txt"
    |> File.read!()
    |> String.split("\n")
    |> Enum.map(&Integer.parse/1)
    |> Enum.chunk_every(2, 1, :discard)
    |> Enum.filter(fn [x, y] -> y > x end)
    |> Enum.count()
  end
end
IO.inspect(Scanner.depth_increases())

defmodule ListFilter do
  require Integer

  def call(list), do: count(list, 0)

  defp count([], acc), do: acc

  defp count([head | tail], acc) do
    acc = head |> Integer.parse() |> is_odd(acc)
    count(tail, acc)
  end

  defp is_odd(:error, acc), do: acc

  defp is_odd(tuple, acc), do: tuple |> elem(0) |> Integer.is_odd() |> validate(acc)

  defp validate(true, acc), do: acc + 1

  defp validate(false, acc), do: acc
end

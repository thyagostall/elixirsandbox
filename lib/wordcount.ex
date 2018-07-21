defmodule WordCount do
  def count(lines) do
    lines
    |> Stream.flat_map(&String.split/1)
    |> Stream.map(&String.downcase/1)
    |> Stream.map(&remove_special_chars/1)
    |> Enum.reduce(%{}, &count_words/2)
  end

  defp remove_special_chars(word) do
    word
    |> String.normalize(:nfd)
    |> String.replace(~r/[^A-z\s]/u, "")
  end

  defp count_words(word, map) do
    Map.update(map, word, 1, &(&1 + 1))
  end
end

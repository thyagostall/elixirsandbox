defmodule PingPong do
  def ping() do
    receive do
      {:ball, from} -> receive_message(from); ping()
      {:stop} -> stop()
    end
  end

  defp receive_message(from) do
    IO.puts("Ping")
    :timer.sleep(2000)
    send(from, {:ball, self()})
  end

  defp stop() do
    :ok
  end
end

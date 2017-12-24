defmodule Pingpong.Pong do

  # Loop recursivelly through Actor mailbox
  def loop do
    receive do
      {:ping, sender_pid} ->
        reply(sender_pid)
        IO.puts("Received :ping.")
        loop()
      _ ->
        loop()
      end
  end

  def reply(sender_pid) do
    send sender_pid, {:pong, self()}
  end

end

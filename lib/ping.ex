# Ping actor reacts to :pong
defmodule Pingpong.Ping do

# Loop recursivelly through Actor mailbox
  def loop do
    receive do
      {:pong, sender_pid} ->
        reply(sender_pid)
        IO.puts("Received :pong.")
        loop()
      _ ->
        loop()
      end
  end

  def reply(sender_pid) do
    send sender_pid, {:ping, self()}
  end

end

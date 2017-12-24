defmodule Pingpong do

  def start do
    # Spawn a Ping actor
    ping = spawn(Pingpong.Ping, :loop, [])
    # Spawn a Pong actor
    pong = spawn(Pingpong.Pong, :loop, [])
    # Send Ping message on behalf of Ping actor to Pong actor
    send(pong, {:ping, ping})
  end

end

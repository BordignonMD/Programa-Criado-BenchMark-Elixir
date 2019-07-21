defmodule Spawn_monitor do
   def calcular(arg) do
      spawn_monitor(fn -> IO.puts Enum.max(arg) end)
   end
end
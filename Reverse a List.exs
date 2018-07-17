defmodule Solution do
   def start do
      n = IO.read(:all)
            |> String.trim
            |> String.split([" ", "\n"])
            |> Enum.map(&String.to_integer/1)
      s = Enum.reverse(n)
      for x <- s, do: IO.puts x
   end
end
Solution.start

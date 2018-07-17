defmodule Solution do
    def gd(a, 0), do: IO.puts a
    def gd(a, b) do
        gd(b, rem(a,b))        
    end    
    def start do
        [a, b] = IO.gets("") |> String.split |> Enum.map(&String.to_integer/1)
        gd(a, b)        
    end
end

Solution.start

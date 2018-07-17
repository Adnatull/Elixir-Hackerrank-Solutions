defmodule Solution do

    def print([], x), do: IO.puts x
    
    def print(lst, x) do
        xx = List.delete_at(lst, 0)
        print(xx, x+1)
    end

    def start do
        n = IO.read(:all)
            |> String.trim
            |> String.split([" ", "\n"])
            |> Enum.map(&String.to_integer/1)
        print(n,0)
    end
end

Solution.start

defmodule Solution do
    def print([], sum), do: IO.puts sum

    def print(n,sum) do
        x = hd(n)
        lst = List.delete_at(n,0)
             
        if rem(x, 2) === 0  do
            print(lst,sum)
        else 
            print(lst,sum+x)
        end
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

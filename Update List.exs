defmodule Solution do

    def print([]), do: nil
    
    def print(lst) do
        x = hd(lst)
        y = List.delete_at(lst,0)
        IO.puts abs(x)
        print(y)    
    end
    
    def start do
        lst = IO.read(:all)
                |> String.trim
                |> String.split([" ","\n"])
                |> Enum.map(&String.to_integer/1)
        print(lst)
    end
end

Solution.start

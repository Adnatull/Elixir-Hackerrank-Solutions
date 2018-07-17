defmodule Solution do    
    def print(_, b, d, d) do
        IO.puts b
    end
    def print(a, b, c, d) do
        print(b, a+b, c+1, d)
    end    
    def start do
        n = IO.gets("")
        {b, _} = Integer.parse(n)
        if b === 1 do
            IO.puts 0
        else
            print(0,1,2,b)
        end
    end
end
Solution.start

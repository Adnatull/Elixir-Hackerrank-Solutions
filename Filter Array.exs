defmodule KhelteThako do    

    def print(n, s) do 
        {b,_} = Integer.parse(s)
        if b < n do
            IO.puts b
        end
        x = IO.gets ""
        if x != :eof do
            print(n, x)
        end
    end
    
    def start(n) do
        b = IO.gets ""
        print(n,b)
    end
end

n = IO.gets("") |> Integer.parse |> elem(0)
KhelteThako.start(n)

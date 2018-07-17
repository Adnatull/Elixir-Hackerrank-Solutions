defmodule KhelteThako do
    def start(n) do
       {val, _} = Integer.parse(n)
       print(val)
    end
    
    def print(n) when n <=1 do
        IO.puts("Hello World")
    end
    
    def print(n) do
        IO.puts("Hello World")
        print(n-1)
    end
end

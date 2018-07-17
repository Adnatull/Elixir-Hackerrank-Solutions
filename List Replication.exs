defmodule KhelteThako do

    def print(n, x) when n <= 1 do
        IO.puts x
    end
    def print(n, x)  do
        IO.puts x
        print(n-1, x)
    end 
    
    def khelo(n,:eof), do: nil  
    def khelo(n,s) do
        {a, _} = Integer.parse(s)
        print(n,a)           
        p = IO.gets ""
        khelo(n,p)
    end 
    
    def start(n) do
        s = IO.gets ""
        khelo(n,s)
    end
end
n = IO.gets ""
{total, _} = Integer.parse(n)
KhelteThako.start(total)

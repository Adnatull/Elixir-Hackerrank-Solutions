defmodule Solution do

    defp khelo([], c) do
        IO.puts c
    end
    
    defp khelo([a | b], c) do
        if c =~ a === false do
            khelo(b, Enum.join([c,a]))
        else
            khelo(b, c)
        end
    end
    
    def start do
        a = IO.gets("") |> String.trim()
        khelo(String.codepoints(a),"")     
    end
end

Solution.start

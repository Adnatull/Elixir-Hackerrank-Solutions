defmodule Solution do
    
    defp moja([], []), do: nil    
    defp moja([h | t], [h1 | t1]) do
        IO.write(h <> h1)
        moja(t, t1)
    end

    def start do
        a = IO.gets("") |> String.replace("\n", "") 
        b = IO.gets("") |> String.replace("\n", "") 
        moja(String.codepoints(a),String.codepoints(b))
    end
end

Solution.start

defmodule Solution do
    def khelo(_, 0), do: nil    
    def khelo([a | b], c) do
        IO.write("#{b}#{a} ")
        khelo(String.codepoints(Enum.join([b, a])), c-1)
    end
    
    defp loop(0), do: nil
    defp loop(test) do
        s = IO.gets("") |> String.trim |> String.replace("\n", "")
        khelo(String.codepoints(s), String.length(s))
        IO.puts ""
        loop(test-1)
    end

    def start do
        tet = IO.gets("") |> String.trim
        {b, _} = Integer.parse(tet)
        loop(b)
    end
end

Solution.start

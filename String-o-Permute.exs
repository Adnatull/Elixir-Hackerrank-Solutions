defmodule Solution do

    defp khelo([]), do: []
    defp khelo([last]), do: [last]
    defp khelo([a, b | rest ]) do
        [b, a, khelo(rest)]
    end
    
    defp loop(0), do: nil
    defp loop(n) do
        line = to_charlist(String.trim(IO.gets("")))
        IO.puts(khelo(line))
        loop(n-1)
    end    
    def start do
        {n, _} = IO.gets("") |> String.trim |> Integer.parse
        loop(n)
    end
end

Solution.start

defmodule Solution do

    defp fun(0), do: 1
    defp fun(x) do
        x*fun(x-1)
    end

    defp khelo(x) do
        for i <- 0..x do
            IO.write "#{div(div(fun(x),fun(i)),fun(x-i))} "
        end
    end

    def start do
        {n, _} = IO.gets("") |> Integer.parse
        for i <- 0..n-1 do
            khelo(i)
            IO.puts ""
        end
    end
end
Solution.start

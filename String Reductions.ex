defmodule Solution do
    
    defp aIsInc(_, []), do: true
    defp aIsInc(a, [b | c]) do
        if a === b do 
            false
        else
            aIsInc(a, c)
        end
    end
    defp calculate([], _), do: nil
    defp calculate([a | b], c) do 
        if aIsInc(a, c) do
            IO.write(a)
            calculate(b, c ++ [a])
        else 
            calculate(b,c)
        end
    end
    
    def start do
        s = IO.gets ""
        calculate(String.codepoints(s), [])
    end
end

Solution.start

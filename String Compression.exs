defmodule Solution do
    def kk([], x, y, z) do
        if y === 1 do
            IO.puts("#{z}#{x}")
        else
            IO.puts("#{z}#{x}#{y}")
        end
    end
    
    def kk([head | tail], x, y, z) do
        cond do
            head === x ->
                kk(tail, x, y+1, z)
            head !== x ->
                cond do 
                    y === 1 ->
                        kk(tail,head, 1, z <> x )
                    y === -1 ->
                        kk(tail, head, 1, z)
                    y !== 1 ->
                        kk(tail,head, 1, z <> x <> "#{y}" )
                end
        end
    end

    def begin do
        s = IO.gets("")
        kk(String.codepoints(s), '1', -1, "")       
    end
end

Solution.begin

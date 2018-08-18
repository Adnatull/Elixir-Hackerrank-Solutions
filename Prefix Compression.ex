defmodule Solution do

    def start do 
        s1 = IO.gets("") |> String.trim |> String.codepoints
        s2 = IO.gets("") |> String.trim |> String.codepoints
        
        s3 = Enum.zip(s1, s2) # https://hexdocs.pm/elixir/Enum.html#zip/2
        s4 = Enum.reduce_while(s3, 0, fn({a, b}, cnt) -> 
                                                if a === b, 
                                                do: {:cont, cnt+1}, 
                                                else: {:halt, cnt} 
            end) # https://hexdocs.pm/elixir/Enum.html#reduce_while/3
        a = length(s1) - s4
        b = length(s2) - s4
        IO.puts "#{s4} #{Enum.take(s1, s4)}" # https://hexdocs.pm/elixir/Enum.html#take/2
        IO.puts "#{a} #{Enum.take(s1, -a)}"  # https://hexdocs.pm/elixir/Enum.html#take/2
        IO.puts "#{b} #{Enum.take(s2, -b)}"  # https://hexdocs.pm/elixir/Enum.html#take/2
    end

end

Solution.start

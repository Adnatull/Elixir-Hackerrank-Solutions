defmodule KhelteThako do
    def start do 
        list = IO.read(:all)
                |> String.trim
                |> String.split([" ", "\n"])
                |> Enum.map(&String.to_integer/1)
        akabaka = list
                    |> Enum.drop_every(2)
        for x <- akabaka, do: IO.puts x
    end
end

KhelteThako.start

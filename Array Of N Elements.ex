defmodule Solution do
    def khelo do
       n = IO.gets("")
       {k, _} = Integer.parse(n)
       lst = 1..k |>  Enum.map(fn x -> x end) 
       IO.inspect(lst, limit: :infinity)
   end
end
Solution.khelo

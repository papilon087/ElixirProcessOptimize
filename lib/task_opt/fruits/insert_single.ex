defmodule TaskOpt.Fruits.InsertSingle do
  alias TaskOpt.Fruits.Fruit
  alias TaskOpt.Repo

  def call() do
    number_of_fruits = 1..65535

    records =
      Enum.map(number_of_fruits, fn x ->
        %{name: "fruit #{x}"}
      end)

    Repo.insert_all(Fruit, records)
  end
end

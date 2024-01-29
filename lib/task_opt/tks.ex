defmodule TaskOpt.Tks do
  def call() do
    # Returns is not important.
    # Task.start(&heavy_work/0)
    # light_work()

    # Return is important for function async and await It depends result.
    task = Task.async(&heavy_work/0)
    light_work()
    Task.await(task)
  end

  defp heavy_work() do
    :timer.sleep(5000)
    IO.inspect("Heavy_work")
  end

  defp light_work() do
    :timer.sleep(5000)
    IO.inspect("Light Work")
  end
end

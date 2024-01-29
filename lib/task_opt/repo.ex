defmodule TaskOpt.Repo do
  use Ecto.Repo,
    otp_app: :task_opt,
    adapter: Ecto.Adapters.Postgres
end

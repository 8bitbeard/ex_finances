defmodule ExFinances.Repo do
  use Ecto.Repo,
    otp_app: :ex_finances,
    adapter: Ecto.Adapters.Postgres
end

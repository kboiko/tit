defmodule Tit.Repo do
  use Ecto.Repo,
    otp_app: :tit,
    adapter: Ecto.Adapters.Postgres
end

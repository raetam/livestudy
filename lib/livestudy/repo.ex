defmodule Livestudy.Repo do
  use Ecto.Repo,
    otp_app: :livestudy,
    adapter: Ecto.Adapters.Postgres
end

defmodule Orga.Repo do
  use Ecto.Repo,
    otp_app: :orga,
    adapter: Ecto.Adapters.Postgres
end

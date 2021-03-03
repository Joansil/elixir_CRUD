defmodule CadUser.Repo do
  use Ecto.Repo,
    otp_app: :cad_user,
    adapter: Ecto.Adapters.Postgres
end

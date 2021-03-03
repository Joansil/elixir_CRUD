defmodule CadUser.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :name, :string
    field :sel_description, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :sel_description])
    |> validate_required([:name, :email, :sel_description])
    |> validate_format(:email, ~r/@/, message: "Formato de email inválido.")

  end
end

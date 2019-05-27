defmodule PhoenixExample.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :description, :string
    field :display_name, :string
    field :email, :string
    field :password_hash, :string
    field :screen_name, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:display_name, :description, :screen_name, :email, :password_hash])
    |> validate_required([:display_name, :description, :screen_name, :email, :password_hash])
    |> unique_constraint(:screen_name)
    |> unique_constraint(:email)
  end
end

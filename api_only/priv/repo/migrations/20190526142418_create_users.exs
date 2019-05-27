defmodule PhoenixExample.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :display_name, :string
      add :description, :text
      add :screen_name, :string
      add :email, :string
      add :password_hash, :string

      timestamps()
    end

    create unique_index(:users, [:screen_name])
    create unique_index(:users, [:email])
  end
end

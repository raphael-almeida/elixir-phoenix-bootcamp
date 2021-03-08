defmodule Discuss.Repo.Migrations.AddUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :provider, :string
      add :token, :string

      timestamps() # Make sure we have created_at and last_modified on every record inside :users table
    end
  end
end

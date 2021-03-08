defmodule Discuss.User do
  use Discuss.Web, :model

  # Model modules need to have two things:
  # - schema
  # - changeset

  schema "users" do
    field :email, :string
    field :provider, :string
    field :token, :string

    timestamps()
  end

  def changeset(struct, params \\ %{})  do
    struct
    |> cast(params, [:email, :provider, :token])
    |> validate_required([:email, :provider, :token])
  end

end

defmodule BorrowersBackend.Article do
  use BorrowersBackend.Web, :model

  schema "articles" do
    field :created_at, Ecto.Date
    field :description, :string
    field :notes, :string
    field :state, :string
    belongs_to :friend, BorrowersBackend.Friend

    timestamps
  end

  @required_fields ~w(created_at description notes state friend_id)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end

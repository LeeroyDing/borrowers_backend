defmodule BorrowersBackend.Friend do
  use BorrowersBackend.Web, :model

  schema "friends" do
    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :twitter, :string
    
    has_many :articles, BorrowersBackend.Article

    timestamps
  end

  @required_fields ~w(first_name last_name email twitter)
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

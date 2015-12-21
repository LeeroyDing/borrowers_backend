defmodule BorrowersBackend.Repo.Migrations.CreateFriend do
  use Ecto.Migration

  def change do
    create table(:friends) do
      add :first_name, :string
      add :last_name, :string
      add :email, :string
      add :twitter, :string
      add :total_articles, :integer

      timestamps
    end

  end
end

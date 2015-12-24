defmodule BorrowersBackend.Repo.Migrations.CreateArticle do
  use Ecto.Migration

  def change do
    create table(:articles) do
      add :created_at, :date
      add :description, :string
      add :notes, :string
      add :state, :string
      add :friend_id, references(:friends)

      timestamps
    end
    create index(:articles, [:friend_id])

  end
end

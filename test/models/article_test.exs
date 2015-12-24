defmodule BorrowersBackend.ArticleTest do
  use BorrowersBackend.ModelCase

  alias BorrowersBackend.Article

  @valid_attrs %{created_at: "2010-04-17", description: "some content", notes: "some content", state: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Article.changeset(%Article{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Article.changeset(%Article{}, @invalid_attrs)
    refute changeset.valid?
  end
end

defmodule BorrowersBackend.FriendTest do
  use BorrowersBackend.ModelCase

  alias BorrowersBackend.Friend

  @valid_attrs %{email: "some content", first_name: "some content", last_name: "some content", total_articles: 42, twitter: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Friend.changeset(%Friend{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Friend.changeset(%Friend{}, @invalid_attrs)
    refute changeset.valid?
  end
end

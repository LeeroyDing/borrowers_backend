defmodule BorrowersBackend.FriendControllerTest do
  use BorrowersBackend.ConnCase

  alias BorrowersBackend.Friend
  @valid_attrs %{email: "some content", first_name: "some content", last_name: "some content", total_articles: 42, twitter: "some content"}
  @invalid_attrs %{}

  setup do
    conn = conn() |> put_req_header("accept", "application/json")
    {:ok, conn: conn}
  end

  test "lists all entries on index", %{conn: conn} do
    conn = get conn, friend_path(conn, :index)
    assert json_response(conn, 200)["data"] == []
  end

  test "shows chosen resource", %{conn: conn} do
    friend = Repo.insert! %Friend{}
    conn = get conn, friend_path(conn, :show, friend)
    assert json_response(conn, 200)["data"] == %{"id" => friend.id,
      "first_name" => friend.first_name,
      "last_name" => friend.last_name,
      "email" => friend.email,
      "twitter" => friend.twitter,
      "total_articles" => friend.total_articles}
  end

  test "does not show resource and instead throw error when id is nonexistent", %{conn: conn} do
    assert_raise Ecto.NoResultsError, fn ->
      get conn, friend_path(conn, :show, -1)
    end
  end

  test "creates and renders resource when data is valid", %{conn: conn} do
    conn = post conn, friend_path(conn, :create), friend: @valid_attrs
    assert json_response(conn, 201)["data"]["id"]
    assert Repo.get_by(Friend, @valid_attrs)
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post conn, friend_path(conn, :create), friend: @invalid_attrs
    assert json_response(conn, 422)["errors"] != %{}
  end

  test "updates and renders chosen resource when data is valid", %{conn: conn} do
    friend = Repo.insert! %Friend{}
    conn = put conn, friend_path(conn, :update, friend), friend: @valid_attrs
    assert json_response(conn, 200)["data"]["id"]
    assert Repo.get_by(Friend, @valid_attrs)
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    friend = Repo.insert! %Friend{}
    conn = put conn, friend_path(conn, :update, friend), friend: @invalid_attrs
    assert json_response(conn, 422)["errors"] != %{}
  end

  test "deletes chosen resource", %{conn: conn} do
    friend = Repo.insert! %Friend{}
    conn = delete conn, friend_path(conn, :delete, friend)
    assert response(conn, 204)
    refute Repo.get(Friend, friend.id)
  end
end

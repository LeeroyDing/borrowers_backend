defmodule BorrowersBackend.PageController do
  use BorrowersBackend.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

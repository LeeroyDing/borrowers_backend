defmodule BorrowersBackend.ArticleView do
  use BorrowersBackend.Web, :view

  attributes [:created_at, :description, :notes, :state, :friend]

end
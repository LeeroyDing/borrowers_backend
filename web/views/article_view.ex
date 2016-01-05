defmodule BorrowersBackend.ArticleView do
  use BorrowersBackend.Web, :view

  attributes [:description, :notes, :state, :inserted_at]

  has_one :friend

end

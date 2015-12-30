defmodule BorrowersBackend.ArticleView do
  use BorrowersBackend.Web, :view

  attributes [:description, :notes, :state]

  has_one :friend

end

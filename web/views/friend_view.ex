defmodule BorrowersBackend.FriendView do
  use BorrowersBackend.Web, :view

  attributes [:first_name, :last_name, :email, :twitter]
  
  has_many :articles
  
end

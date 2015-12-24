defmodule BorrowersBackend.Router do
  use BorrowersBackend.Web, :router

  pipeline :api do
    plug :accepts, ["json-api"]
    plug JaSerializer.ContentTypeNegotiation
    plug JaSerializer.Deserializer
  end

  scope "/api", BorrowersBackend do
    pipe_through :api
    
    resources "/friends", FriendController
    options   "/friends", FriendController, :options
    resources "/articles", ArticleController
    options   "/articles", ArticleController, :options
  end

end

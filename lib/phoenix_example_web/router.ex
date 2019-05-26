defmodule PhoenixExampleWeb.Router do
  use PhoenixExampleWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhoenixExampleWeb do
    pipe_through :api
    resources "/users", UserController, except: [:new, :edit]
  end
end

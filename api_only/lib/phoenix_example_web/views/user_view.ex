defmodule PhoenixExampleWeb.UserView do
  use PhoenixExampleWeb, :view
  alias PhoenixExampleWeb.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      display_name: user.display_name,
      description: user.description,
      screen_name: user.screen_name,
      email: user.email,
      password_hash: user.password_hash}
  end
end

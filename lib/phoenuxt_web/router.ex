defmodule PhoenuxtWeb.Router do
  use PhoenuxtWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhoenuxtWeb do
    pipe_through :api
  end
end

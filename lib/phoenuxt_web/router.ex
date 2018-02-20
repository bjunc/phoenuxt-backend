defmodule PhoenuxtWeb.Router do
  use PhoenuxtWeb, :router

  if Mix.env == :dev do
    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: PhoenuxtWeb.Schema
  end
end

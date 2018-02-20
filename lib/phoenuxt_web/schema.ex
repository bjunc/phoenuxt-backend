defmodule PhoenuxtWeb.Schema do
  @moduledoc false

  use Absinthe.Schema
  use Absinthe.Ecto, repo: Phoenuxt.Repo

  object :user do
		field :id, :id
		field :email, :string
		field :first_name, :string
		field :last_name, :string
    # field :address, :address, resolve: &UserResolver.resolve_address/3
  end

  query do
    field :viewer, :user do
      resolve fn(_args, _info) ->
        {:ok, %{
          id: 1,
          email: "peter@dailybugle.com",
          first_name: "Peter",
          last_name: "Parker"
        }}
      end
    end 
  end
end
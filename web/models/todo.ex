defmodule TodoList.Todo do
  use TodoList.Web, :model

  schema "todos" do
    field :description, :string
    field :completed, :boolean, default: false
    field :color, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:description, :completed, :color])
    |> validate_required([:description, :completed, :color])
  end
end

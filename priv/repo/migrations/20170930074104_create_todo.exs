defmodule TodoList.Repo.Migrations.CreateTodo do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :description, :string
      add :completed, :boolean, default: false, null: false
      add :color, :integer

      timestamps()
    end
  end
end

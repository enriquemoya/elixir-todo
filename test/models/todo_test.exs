defmodule TodoList.TodoTest do
  use TodoList.ModelCase

  alias TodoList.Todo

  @valid_attrs %{color: 42, completed: true, description: "some description"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Todo.changeset(%Todo{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Todo.changeset(%Todo{}, @invalid_attrs)
    refute changeset.valid?
  end
end

defmodule TodoList.TodoView do
  use TodoList.Web, :view

  def render("index.json", %{todos: todos}) do
    %{data: render_many(todos, TodoList.TodoView, "todo.json")}
  end

  def render("show.json", %{todo: todo}) do
    %{data: render_one(todo, TodoList.TodoView, "todo.json")}
  end

  def render("todo.json", %{todo: todo}) do
    %{id: todo.id,
      description: todo.description,
      completed: todo.completed,
      color: todo.color}
  end
end

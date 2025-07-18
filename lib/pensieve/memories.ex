defmodule Pensieve.Memories do
  alias Pensieve.Repo
  alias Pensieve.Memories.Memory

  def list_memories do
    Repo.all(Memory)
  end

  def get_memory!(id) do
    Repo.get!(Memory, id)
  end

  def create_memory(attrs \\ %{}) do
    %Memory{}
    |> Memory.changeset(attrs)
    |> Repo.insert()
  end

  def update_memory(%Memory{} = memory, attrs) do
    memory
    |> Memory.changeset(attrs)
    |> Repo.update()
  end

  def change_memory(%Memory{} = memory, attrs \\ %{}) do
    Memory.changeset(memory, attrs)
  end

  def delete_memory(%Memory{} = memory) do
    Repo.delete(memory)
  end
end

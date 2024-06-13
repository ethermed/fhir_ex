defmodule SchemaLoader do
  @moduledoc """
  Module to load and parse JSON schema.
  """

  def load_schema(file_path) do
    file_path
    |> File.read!()
    |> Jason.decode!()
  end
end

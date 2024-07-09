# defmodule Mix.Tasks.GenerateSchema do
#   use Mix.Task

#   @shortdoc "Generates Ecto schemas from a JSON schema"

#   def run(args) do
#     case args do
#       [json_file_path] ->
#         json_file_path
#         |> File.read!()
#         |> Jason.decode!()
#         |> generate_schemas()
#       _ ->
#         Mix.shell().error("Usage: mix generate_schema <path_to_json_schema_file>")
#     end
#   end

#   defp generate_schemas(json_schema) do
#     defs = Enum.filter(json_schema["definitions"], fn
#       {name, _} when name in ~w(Base ElementDefinition) -> false
#       {_name, definition} -> Map.has_key?(definition, "properties")
#     end)
#     for {name, schema} <- defs do
#       module_name = Macro.camelize(name)
#       IO.inspect(module_name)
#       {fields, nested_modules} = get_fields(schema["properties"], module_name)
#       content = generate_module(module_name, fields)

#       file_name = Macro.underscore(module_name) <> ".ex"
#       File.write!("lib/generated_2/#{file_name}", content)

#       Mix.shell().info("Generated schema for #{module_name}")

#       # Generate nested modules
#       for nested_module <- nested_modules do
#         generate_schemas(nested_module)
#       end
#     end
#   end

#   defp get_fields(properties, parent_module) do
#     Enum.reduce(properties, {[], []}, fn {name, details}, {fields, nested_modules} ->
#       case details do
#         %{"type" => "object", "properties" => nested_props} ->
#           nested_module_name = Module.concat(parent_module, Macro.camelize(name))
#           nested_module = %{"properties" => %{name => %{"properties" => nested_props}}}
#           {fields ++ [{String.to_atom(name), {:embeds_one, nested_module_name, Module.concat(Elixir, nested_module_name)}}],
#            nested_modules ++ [nested_module]}

#         %{"type" => "array", "items" => %{"type" => "object", "properties" => nested_props}} ->
#           nested_module_name = Module.concat(parent_module, Macro.camelize(name))
#           nested_module = %{"properties" => %{Inflex.singularize(name) => %{"properties" => nested_props}}}
#           {fields ++ [{String.to_atom(name), {:embeds_many, nested_module_name, Module.concat(Elixir, nested_module_name)}}],
#            nested_modules ++ [nested_module]}

#         _ ->
#           type = get_type(details["type"])
#           {fields ++ [{String.to_atom(name), type}], nested_modules}
#       end
#     end)
#   end

#   defp get_type("string"), do: :string
#   defp get_type("integer"), do: :integer
#   defp get_type("number"), do: :float
#   defp get_type("boolean"), do: :boolean
#   defp get_type("array"), do: {:array, :string}  # Assuming array of strings for simplicity
#   defp get_type(_), do: :string  # Default to string for unknown types

#   defp generate_module(module_name, fields) do
#     fields_ast = for {name, type} <- fields do
#       case type do
#         {:embeds_one, nested_module, _} ->
#           quote do
#             embeds_one unquote(name), unquote(nested_module)
#           end
#         {:embeds_many, nested_module, _} ->
#           quote do
#             embeds_many unquote(name), unquote(nested_module)
#           end
#         _ ->
#           quote do
#             field unquote(name), unquote(type)
#           end
#       end
#     end

#     typespec_ast = quote do
#       @type t :: %__MODULE__{
#         unquote_splicing(for {name, type} <- fields do
#           {name, type_to_typespec(type)}
#         end)
#       }
#     end

#     changeset_fields = Enum.map(fields, &elem(&1, 0))

#     quote do
#       defmodule unquote(Module.concat(Elixir, module_name)) do
#         use Ecto.Schema
#         import Ecto.Changeset

#         schema "#{Macro.underscore(unquote(module_name))}" do
#           unquote_splicing(fields_ast)
#         end

#         unquote(typespec_ast)

#         def changeset(struct, params \\ %{}) do
#           struct
#           |> cast(params, unquote(changeset_fields))
#           |> validate_required(unquote(changeset_fields))
#           |> cast_nested_embeddings()
#         end

#         defp cast_nested_embeddings(changeset) do
#           unquote(
#             for {name, {embed_type, nested_module, _}} <- fields, embed_type in [:embeds_one, :embeds_many] do
#               quote do
#                 changeset
#                 |> cast_embed(unquote(name), with: &unquote(nested_module).changeset/2)
#               end
#             end
#           )
#         end

#         def from_json(json) when is_binary(json) do
#           json
#           |> Jason.decode!()
#           |> from_json()
#         end

#         def from_json(map) when is_map(map) do
#           changeset(%__MODULE__{}, map)
#           |> apply_action(:insert)
#         end
#       end
#     end
#     |> Macro.to_string()
#   end

#   defp type_to_typespec(:string), do: quote do: String.t()
#   defp type_to_typespec(:integer), do: quote do: integer()
#   defp type_to_typespec(:float), do: quote do: float()
#   defp type_to_typespec(:boolean), do: quote do: boolean()
#   defp type_to_typespec({:array, _}), do: quote do: list(String.t())
#   defp type_to_typespec({:embeds_one, module, _}), do: quote do: unquote(module).t()
#   defp type_to_typespec({:embeds_many, module, _}), do: quote do: list(unquote(module).t())
# end

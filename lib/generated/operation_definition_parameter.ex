defmodule Fhir.OperationDefinitionParameter do
  @moduledoc """
  A formal computable definition of an operation (on the RESTful interface) or a named query (using the search interaction).
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:allowedType, :string)
    field(:documentation, :string)
    field(:id, :string)
    field(:max, :string)
    field(:min, :float)
    field(:name, :string)
    field(:scope, :string)
    field(:searchType, :string)
    field(:targetProfile, :string)
    field(:type, :string)
    field(:use, :string)
    embeds_many(:_allowedType, Fhir.Element)
    embeds_one(:_documentation, Fhir.Element)
    embeds_one(:_max, Fhir.Element)
    embeds_one(:_min, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_many(:_scope, Fhir.Element)
    embeds_one(:_searchType, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
    embeds_one(:_use, Fhir.Element)
    embeds_one(:binding, Fhir.OperationDefinitionBinding)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:part, Fhir.OperationDefinitionParameter)
    embeds_many(:referencedFrom, Fhir.OperationDefinitionReferencedFrom)
  end

  @type t :: %__MODULE__{
          allowedType: String.t(),
          documentation: String.t(),
          id: String.t(),
          max: String.t(),
          min: float(),
          name: String.t(),
          scope: String.t(),
          searchType: String.t(),
          targetProfile: String.t(),
          type: String.t(),
          use: String.t(),
          _allowedType: [Fhir.Element.t()],
          _documentation: Fhir.Element.t(),
          _max: Fhir.Element.t(),
          _min: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          _scope: [Fhir.Element.t()],
          _searchType: Fhir.Element.t(),
          _type: Fhir.Element.t(),
          _use: Fhir.Element.t(),
          binding: Fhir.OperationDefinitionBinding.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          part: [Fhir.OperationDefinitionParameter.t()],
          referencedFrom: [Fhir.OperationDefinitionReferencedFrom.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :allowedType,
      :documentation,
      :id,
      :max,
      :min,
      :name,
      :scope,
      :searchType,
      :targetProfile,
      :type,
      :use
    ])
    |> cast_embed(:_allowedType, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_documentation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_max, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_min, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_scope, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_searchType, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_use, with: &Fhir.Element.changeset/2)
    |> cast_embed(:binding, with: &Fhir.OperationDefinitionBinding.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:part, with: &Fhir.OperationDefinitionParameter.changeset/2)
    |> cast_embed(:referencedFrom, with: &Fhir.OperationDefinitionReferencedFrom.changeset/2)
    |> validate_format(:documentation, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:max, ~r/^^[\s\S]+$$/)
    |> validate_format(:min, ~r/^[0]|[-+]?[1-9][0-9]*$/)
    |> validate_format(:name, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:searchType, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:type, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:use, ~r/^[^\s]+( [^\s]+)*$/)
  end

  def new(params) do
    %__MODULE__{}
    |> changeset(params)
    |> apply_action(:new)
  end

  def new!(params) do
    case new(params) do
      {:ok, val} -> val
      {:error, cs} -> raise "Invalid #{__ENV__.module}.new!(): #{inspect(cs.errors)}"
    end
  end
end

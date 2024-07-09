defmodule Fhir.ConceptMapTarget do
  @moduledoc """
  A statement of relationships from one set of concepts to one or more other concepts - either concepts in code systems, or data element/data element concepts, or classes in class models.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:code, :string)
    field(:comment, :string)
    field(:display, :string)
    field(:id, :string)
    field(:relationship, :string)
    field(:valueSet, :string)
    embeds_one(:_code, Fhir.Element)
    embeds_one(:_comment, Fhir.Element)
    embeds_one(:_display, Fhir.Element)
    embeds_one(:_relationship, Fhir.Element)
    embeds_many(:dependsOn, Fhir.ConceptMapDependsOn)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:product, Fhir.ConceptMapDependsOn)
    embeds_many(:property, Fhir.ConceptMapProperty1)
  end

  @type t :: %__MODULE__{
          code: String.t(),
          comment: String.t(),
          display: String.t(),
          id: String.t(),
          relationship: String.t(),
          valueSet: String.t(),
          _code: Fhir.Element.t(),
          _comment: Fhir.Element.t(),
          _display: Fhir.Element.t(),
          _relationship: Fhir.Element.t(),
          dependsOn: [Fhir.ConceptMapDependsOn.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          product: [Fhir.ConceptMapDependsOn.t()],
          property: [Fhir.ConceptMapProperty1.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:code, :comment, :display, :id, :relationship, :valueSet])
    |> cast_embed(:_code, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_comment, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_display, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_relationship, with: &Fhir.Element.changeset/2)
    |> cast_embed(:dependsOn, with: &Fhir.ConceptMapDependsOn.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:product, with: &Fhir.ConceptMapDependsOn.changeset/2)
    |> cast_embed(:property, with: &Fhir.ConceptMapProperty1.changeset/2)
    |> validate_format(:code, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:comment, ~r/^^[\s\S]+$$/)
    |> validate_format(:display, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:relationship, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:valueSet, ~r/^\S*$/)
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

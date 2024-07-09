defmodule Fhir.CodeSystemConcept do
  @moduledoc """
  The CodeSystem resource is used to declare the existence of and describe a code system or code system supplement and its key properties, and optionally define a part or all of its content.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:code, :string)
    field(:definition, :string)
    field(:display, :string)
    field(:id, :string)
    embeds_one(:_code, Fhir.Element)
    embeds_one(:_definition, Fhir.Element)
    embeds_one(:_display, Fhir.Element)
    embeds_many(:concept, Fhir.CodeSystemConcept)
    embeds_many(:designation, Fhir.CodeSystemDesignation)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:property, Fhir.CodeSystemProperty1)
  end

  @type t :: %__MODULE__{
          code: String.t(),
          definition: String.t(),
          display: String.t(),
          id: String.t(),
          _code: Fhir.Element.t(),
          _definition: Fhir.Element.t(),
          _display: Fhir.Element.t(),
          concept: [Fhir.CodeSystemConcept.t()],
          designation: [Fhir.CodeSystemDesignation.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          property: [Fhir.CodeSystemProperty1.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:code, :definition, :display, :id])
    |> cast_embed(:_code, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_definition, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_display, with: &Fhir.Element.changeset/2)
    |> cast_embed(:concept, with: &Fhir.CodeSystemConcept.changeset/2)
    |> cast_embed(:designation, with: &Fhir.CodeSystemDesignation.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:property, with: &Fhir.CodeSystemProperty1.changeset/2)
    |> validate_format(:code, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:definition, ~r/^^[\s\S]+$$/)
    |> validate_format(:display, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
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

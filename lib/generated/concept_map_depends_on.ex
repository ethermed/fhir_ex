defmodule Fhir.ConceptMapDependsOn do
  @moduledoc """
  A statement of relationships from one set of concepts to one or more other concepts - either concepts in code systems, or data element/data element concepts, or classes in class models.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:attribute, :string)
    field(:id, :string)
    field(:valueBoolean, :boolean)
    field(:valueCode, :string)
    field(:valueSet, :string)
    field(:valueString, :string)
    embeds_one(:_attribute, Fhir.Element)
    embeds_one(:_valueBoolean, Fhir.Element)
    embeds_one(:_valueCode, Fhir.Element)
    embeds_one(:_valueString, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:valueCoding, Fhir.Coding)
    embeds_one(:valueQuantity, Fhir.Quantity)
  end

  @type t :: %__MODULE__{
          attribute: String.t(),
          id: String.t(),
          valueBoolean: boolean(),
          valueCode: String.t(),
          valueSet: String.t(),
          valueString: String.t(),
          _attribute: Fhir.Element.t(),
          _valueBoolean: Fhir.Element.t(),
          _valueCode: Fhir.Element.t(),
          _valueString: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          valueCoding: Fhir.Coding.t(),
          valueQuantity: Fhir.Quantity.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:attribute, :id, :valueBoolean, :valueCode, :valueSet, :valueString])
    |> cast_embed(:_attribute, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueBoolean, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueCode, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_valueString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:valueCoding, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:valueQuantity, with: &Fhir.Quantity.changeset/2)
    |> validate_format(:attribute, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
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

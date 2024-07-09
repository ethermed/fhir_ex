defmodule Fhir.ObservationDefinitionQualifiedValue do
  @moduledoc """
  Set of definitional characteristics for a kind of observation or measurement produced or consumed by an orderable health care service.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:abnormalCodedValueSet, :string)
    field(:condition, :string)
    field(:criticalCodedValueSet, :string)
    field(:gender, :string)
    field(:id, :string)
    field(:normalCodedValueSet, :string)
    field(:rangeCategory, :string)
    field(:validCodedValueSet, :string)
    embeds_one(:_condition, Fhir.Element)
    embeds_one(:_gender, Fhir.Element)
    embeds_one(:_rangeCategory, Fhir.Element)
    embeds_one(:age, Fhir.Range)
    embeds_many(:appliesTo, Fhir.CodeableConcept)
    embeds_one(:context, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:gestationalAge, Fhir.Range)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:range, Fhir.Range)
  end

  @type t :: %__MODULE__{
          abnormalCodedValueSet: String.t(),
          condition: String.t(),
          criticalCodedValueSet: String.t(),
          gender: String.t(),
          id: String.t(),
          normalCodedValueSet: String.t(),
          rangeCategory: String.t(),
          validCodedValueSet: String.t(),
          _condition: Fhir.Element.t(),
          _gender: Fhir.Element.t(),
          _rangeCategory: Fhir.Element.t(),
          age: Fhir.Range.t(),
          appliesTo: [Fhir.CodeableConcept.t()],
          context: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          gestationalAge: Fhir.Range.t(),
          modifierExtension: [Fhir.Extension.t()],
          range: Fhir.Range.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :abnormalCodedValueSet,
      :condition,
      :criticalCodedValueSet,
      :gender,
      :id,
      :normalCodedValueSet,
      :rangeCategory,
      :validCodedValueSet
    ])
    |> cast_embed(:_condition, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_gender, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_rangeCategory, with: &Fhir.Element.changeset/2)
    |> cast_embed(:age, with: &Fhir.Range.changeset/2)
    |> cast_embed(:appliesTo, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:context, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:gestationalAge, with: &Fhir.Range.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:range, with: &Fhir.Range.changeset/2)
    |> validate_format(:abnormalCodedValueSet, ~r/^\S*$/)
    |> validate_format(:condition, ~r/^^[\s\S]+$$/)
    |> validate_format(:criticalCodedValueSet, ~r/^\S*$/)
    |> validate_format(:gender, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:normalCodedValueSet, ~r/^\S*$/)
    |> validate_format(:rangeCategory, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:validCodedValueSet, ~r/^\S*$/)
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

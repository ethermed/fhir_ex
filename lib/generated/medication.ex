defmodule Fhir.Medication do
  @moduledoc """
  This resource is primarily used for the identification and definition of a medication, including ingredients, for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "Medication")
    field(:status, :string)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:batch, Fhir.MedicationBatch)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:definition, Fhir.Reference)
    embeds_one(:doseForm, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:ingredient, Fhir.MedicationIngredient)
    embeds_one(:marketingAuthorizationHolder, Fhir.Reference)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:totalVolume, Fhir.Quantity)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          resourceType: String.t(),
          status: String.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          batch: Fhir.MedicationBatch.t(),
          code: Fhir.CodeableConcept.t(),
          contained: [Fhir.ResourceList.t()],
          definition: Fhir.Reference.t(),
          doseForm: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          ingredient: [Fhir.MedicationIngredient.t()],
          marketingAuthorizationHolder: Fhir.Reference.t(),
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          text: Fhir.Narrative.t(),
          totalVolume: Fhir.Quantity.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :implicitRules, :language, :resourceType, :status])
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:batch, with: &Fhir.MedicationBatch.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:definition, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:doseForm, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:ingredient, with: &Fhir.MedicationIngredient.changeset/2)
    |> cast_embed(:marketingAuthorizationHolder, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:totalVolume, with: &Fhir.Quantity.changeset/2)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
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

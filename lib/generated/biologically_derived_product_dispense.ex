defmodule Fhir.BiologicallyDerivedProductDispense do
  @moduledoc """
  This resource reflects an instance of a biologically derived product dispense. The supply or dispense of a biologically derived product from the supply organization or department (e.g. hospital transfusion laboratory) to the clinical team responsible for clinical application.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:preparedDate, :string)
    field(:resourceType, :string, default: "BiologicallyDerivedProductDispense")
    field(:status, :string)
    field(:usageInstruction, :string)
    field(:whenHandedOver, :string)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_preparedDate, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:_usageInstruction, Fhir.Element)
    embeds_one(:_whenHandedOver, Fhir.Element)
    embeds_many(:basedOn, Fhir.Reference)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:destination, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:location, Fhir.Reference)
    embeds_one(:matchStatus, Fhir.CodeableConcept)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:note, Fhir.Annotation)
    embeds_one(:originRelationshipType, Fhir.CodeableConcept)
    embeds_many(:partOf, Fhir.Reference)
    embeds_one(:patient, Fhir.Reference)
    embeds_many(:performer, Fhir.BiologicallyDerivedProductDispensePerformer)
    embeds_one(:product, Fhir.Reference)
    embeds_one(:quantity, Fhir.Quantity)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          preparedDate: String.t(),
          resourceType: String.t(),
          status: String.t(),
          usageInstruction: String.t(),
          whenHandedOver: String.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _preparedDate: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          _usageInstruction: Fhir.Element.t(),
          _whenHandedOver: Fhir.Element.t(),
          basedOn: [Fhir.Reference.t()],
          contained: [Fhir.ResourceList.t()],
          destination: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          location: Fhir.Reference.t(),
          matchStatus: Fhir.CodeableConcept.t(),
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          note: [Fhir.Annotation.t()],
          originRelationshipType: Fhir.CodeableConcept.t(),
          partOf: [Fhir.Reference.t()],
          patient: Fhir.Reference.t(),
          performer: [Fhir.BiologicallyDerivedProductDispensePerformer.t()],
          product: Fhir.Reference.t(),
          quantity: Fhir.Quantity.t(),
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :id,
      :implicitRules,
      :language,
      :preparedDate,
      :resourceType,
      :status,
      :usageInstruction,
      :whenHandedOver
    ])
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_preparedDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_usageInstruction, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_whenHandedOver, with: &Fhir.Element.changeset/2)
    |> cast_embed(:basedOn, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:destination, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:location, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:matchStatus, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:originRelationshipType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:partOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:patient, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:performer, with: &Fhir.BiologicallyDerivedProductDispensePerformer.changeset/2)
    |> cast_embed(:product, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:quantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :preparedDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:usageInstruction, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :whenHandedOver,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
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

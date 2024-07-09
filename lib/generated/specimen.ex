defmodule Fhir.Specimen do
  @moduledoc """
  A sample to be used for analysis.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:combined, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:receivedTime, :string)
    field(:resourceType, :string, default: "Specimen")
    field(:status, :string)
    embeds_one(:_combined, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_receivedTime, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:accessionIdentifier, Fhir.Identifier)
    embeds_one(:collection, Fhir.SpecimenCollection)
    embeds_many(:condition, Fhir.CodeableConcept)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:container, Fhir.SpecimenContainer)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:feature, Fhir.SpecimenFeature)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:note, Fhir.Annotation)
    embeds_many(:parent, Fhir.Reference)
    embeds_many(:processing, Fhir.SpecimenProcessing)
    embeds_many(:request, Fhir.Reference)
    embeds_many(:role, Fhir.CodeableConcept)
    embeds_one(:subject, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          combined: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          receivedTime: String.t(),
          resourceType: String.t(),
          status: String.t(),
          _combined: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _receivedTime: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          accessionIdentifier: Fhir.Identifier.t(),
          collection: Fhir.SpecimenCollection.t(),
          condition: [Fhir.CodeableConcept.t()],
          contained: [Fhir.ResourceList.t()],
          container: [Fhir.SpecimenContainer.t()],
          extension: [Fhir.Extension.t()],
          feature: [Fhir.SpecimenFeature.t()],
          identifier: [Fhir.Identifier.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          note: [Fhir.Annotation.t()],
          parent: [Fhir.Reference.t()],
          processing: [Fhir.SpecimenProcessing.t()],
          request: [Fhir.Reference.t()],
          role: [Fhir.CodeableConcept.t()],
          subject: Fhir.Reference.t(),
          text: Fhir.Narrative.t(),
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :combined,
      :id,
      :implicitRules,
      :language,
      :receivedTime,
      :resourceType,
      :status
    ])
    |> cast_embed(:_combined, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_receivedTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:accessionIdentifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:collection, with: &Fhir.SpecimenCollection.changeset/2)
    |> cast_embed(:condition, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:container, with: &Fhir.SpecimenContainer.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:feature, with: &Fhir.SpecimenFeature.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:parent, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:processing, with: &Fhir.SpecimenProcessing.changeset/2)
    |> cast_embed(:request, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:role, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:combined, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :receivedTime,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
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

defmodule Fhir.BodyStructure do
  @moduledoc """
  Record details about an anatomical structure.  This resource may be used when a coded concept does not provide the necessary detail needed for the use case.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:active, :boolean)
    field(:description, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "BodyStructure")
    embeds_one(:_active, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:excludedStructure, Fhir.BodyStructureIncludedStructure)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:image, Fhir.Attachment)
    embeds_many(:includedStructure, Fhir.BodyStructureIncludedStructure)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:morphology, Fhir.CodeableConcept)
    embeds_one(:patient, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          active: boolean(),
          description: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          resourceType: String.t(),
          _active: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          contained: [Fhir.ResourceList.t()],
          excludedStructure: [Fhir.BodyStructureIncludedStructure.t()],
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          image: [Fhir.Attachment.t()],
          includedStructure: [Fhir.BodyStructureIncludedStructure.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          morphology: Fhir.CodeableConcept.t(),
          patient: Fhir.Reference.t(),
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:active, :description, :id, :implicitRules, :language, :resourceType])
    |> cast_embed(:_active, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:excludedStructure, with: &Fhir.BodyStructureIncludedStructure.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:image, with: &Fhir.Attachment.changeset/2)
    |> cast_embed(:includedStructure, with: &Fhir.BodyStructureIncludedStructure.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:morphology, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:patient, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_inclusion(:active, [true, false])
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
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

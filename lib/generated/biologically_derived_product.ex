defmodule Fhir.BiologicallyDerivedProduct do
  @moduledoc """
  This resource reflects an instance of a biologically derived product. A material substance originating from a biological entity intended to be transplanted or infused
  into another (possibly the same) biological entity.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:division, :string)
    field(:expirationDate, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "BiologicallyDerivedProduct")
    embeds_one(:_division, Fhir.Element)
    embeds_one(:_expirationDate, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:biologicalSourceEvent, Fhir.Identifier)
    embeds_one(:collection, Fhir.BiologicallyDerivedProductCollection)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:parent, Fhir.Reference)
    embeds_many(:processingFacility, Fhir.Reference)
    embeds_one(:productCategory, Fhir.Coding)
    embeds_one(:productCode, Fhir.CodeableConcept)
    embeds_one(:productStatus, Fhir.Coding)
    embeds_many(:property, Fhir.BiologicallyDerivedProductProperty)
    embeds_many(:request, Fhir.Reference)
    embeds_one(:storageTempRequirements, Fhir.Range)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          division: String.t(),
          expirationDate: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          resourceType: String.t(),
          _division: Fhir.Element.t(),
          _expirationDate: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          biologicalSourceEvent: Fhir.Identifier.t(),
          collection: Fhir.BiologicallyDerivedProductCollection.t(),
          contained: [Fhir.ResourceList.t()],
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          parent: [Fhir.Reference.t()],
          processingFacility: [Fhir.Reference.t()],
          productCategory: Fhir.Coding.t(),
          productCode: Fhir.CodeableConcept.t(),
          productStatus: Fhir.Coding.t(),
          property: [Fhir.BiologicallyDerivedProductProperty.t()],
          request: [Fhir.Reference.t()],
          storageTempRequirements: Fhir.Range.t(),
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:division, :expirationDate, :id, :implicitRules, :language, :resourceType])
    |> cast_embed(:_division, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_expirationDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:biologicalSourceEvent, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:collection, with: &Fhir.BiologicallyDerivedProductCollection.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:parent, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:processingFacility, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:productCategory, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:productCode, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:productStatus, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:property, with: &Fhir.BiologicallyDerivedProductProperty.changeset/2)
    |> cast_embed(:request, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:storageTempRequirements, with: &Fhir.Range.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(:division, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :expirationDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
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

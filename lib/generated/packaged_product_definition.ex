defmodule Fhir.PackagedProductDefinition do
  @moduledoc """
  A medically related item or items, in a container or package.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:copackagedIndicator, :boolean)
    field(:description, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:name, :string)
    field(:resourceType, :string, default: "PackagedProductDefinition")
    field(:statusDate, :string)
    embeds_one(:_copackagedIndicator, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:_statusDate, Fhir.Element)
    embeds_many(:attachedDocument, Fhir.Reference)
    embeds_many(:characteristic, Fhir.PackagedProductDefinitionProperty)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:containedItemQuantity, Fhir.Quantity)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:legalStatusOfSupply, Fhir.PackagedProductDefinitionLegalStatusOfSupply)
    embeds_many(:manufacturer, Fhir.Reference)
    embeds_many(:marketingStatus, Fhir.MarketingStatus)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:packageFor, Fhir.Reference)
    embeds_one(:packaging, Fhir.PackagedProductDefinitionPackaging)
    embeds_one(:status, Fhir.CodeableConcept)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          copackagedIndicator: boolean(),
          description: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          name: String.t(),
          resourceType: String.t(),
          statusDate: String.t(),
          _copackagedIndicator: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          _statusDate: Fhir.Element.t(),
          attachedDocument: [Fhir.Reference.t()],
          characteristic: [Fhir.PackagedProductDefinitionProperty.t()],
          contained: [Fhir.ResourceList.t()],
          containedItemQuantity: [Fhir.Quantity.t()],
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          legalStatusOfSupply: [Fhir.PackagedProductDefinitionLegalStatusOfSupply.t()],
          manufacturer: [Fhir.Reference.t()],
          marketingStatus: [Fhir.MarketingStatus.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          packageFor: [Fhir.Reference.t()],
          packaging: Fhir.PackagedProductDefinitionPackaging.t(),
          status: Fhir.CodeableConcept.t(),
          text: Fhir.Narrative.t(),
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :copackagedIndicator,
      :description,
      :id,
      :implicitRules,
      :language,
      :name,
      :resourceType,
      :statusDate
    ])
    |> cast_embed(:_copackagedIndicator, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_statusDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:attachedDocument, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:characteristic, with: &Fhir.PackagedProductDefinitionProperty.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:containedItemQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:legalStatusOfSupply,
      with: &Fhir.PackagedProductDefinitionLegalStatusOfSupply.changeset/2
    )
    |> cast_embed(:manufacturer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:marketingStatus, with: &Fhir.MarketingStatus.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:packageFor, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:packaging, with: &Fhir.PackagedProductDefinitionPackaging.changeset/2)
    |> cast_embed(:status, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_inclusion(:copackagedIndicator, [true, false])
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :statusDate,
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

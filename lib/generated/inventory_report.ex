defmodule Fhir.InventoryReport do
  @moduledoc """
  A report of inventory or stock items.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:countType, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:reportedDateTime, :string)
    field(:resourceType, :string, default: "InventoryReport")
    field(:status, :string)
    embeds_one(:_countType, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_reportedDateTime, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:inventoryListing, Fhir.InventoryReportInventoryListing)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:note, Fhir.Annotation)
    embeds_one(:operationType, Fhir.CodeableConcept)
    embeds_one(:operationTypeReason, Fhir.CodeableConcept)
    embeds_one(:reporter, Fhir.Reference)
    embeds_one(:reportingPeriod, Fhir.Period)
    embeds_one(:text, Fhir.Narrative)
  end

  @type t :: %__MODULE__{
          countType: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          reportedDateTime: String.t(),
          resourceType: String.t(),
          status: String.t(),
          _countType: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _reportedDateTime: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          contained: [Fhir.ResourceList.t()],
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          inventoryListing: [Fhir.InventoryReportInventoryListing.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          note: [Fhir.Annotation.t()],
          operationType: Fhir.CodeableConcept.t(),
          operationTypeReason: Fhir.CodeableConcept.t(),
          reporter: Fhir.Reference.t(),
          reportingPeriod: Fhir.Period.t(),
          text: Fhir.Narrative.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :countType,
      :id,
      :implicitRules,
      :language,
      :reportedDateTime,
      :resourceType,
      :status
    ])
    |> cast_embed(:_countType, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_reportedDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:inventoryListing, with: &Fhir.InventoryReportInventoryListing.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:operationType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:operationTypeReason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:reporter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:reportingPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> validate_format(:countType, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :reportedDateTime,
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

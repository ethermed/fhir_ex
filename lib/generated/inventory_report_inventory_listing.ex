defmodule Fhir.InventoryReportInventoryListing do
  @moduledoc """
  A report of inventory or stock items.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:countingDateTime, :string)
    field(:id, :string)
    embeds_one(:_countingDateTime, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:item, Fhir.InventoryReportItem)
    embeds_one(:itemStatus, Fhir.CodeableConcept)
    embeds_one(:location, Fhir.Reference)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          countingDateTime: String.t(),
          id: String.t(),
          _countingDateTime: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          item: [Fhir.InventoryReportItem.t()],
          itemStatus: Fhir.CodeableConcept.t(),
          location: Fhir.Reference.t(),
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:countingDateTime, :id])
    |> cast_embed(:_countingDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:item, with: &Fhir.InventoryReportItem.changeset/2)
    |> cast_embed(:itemStatus, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:location, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(
      :countingDateTime,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
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

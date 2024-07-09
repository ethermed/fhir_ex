defmodule Fhir.MarketingStatus do
  @moduledoc """
  The marketing status describes the date when a medicinal product is actually put on the market or the date as of which it is no longer available.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:restoreDate, :string)
    embeds_one(:_restoreDate, Fhir.Element)
    embeds_one(:country, Fhir.CodeableConcept)
    embeds_one(:dateRange, Fhir.Period)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:jurisdiction, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:status, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          restoreDate: String.t(),
          _restoreDate: Fhir.Element.t(),
          country: Fhir.CodeableConcept.t(),
          dateRange: Fhir.Period.t(),
          extension: [Fhir.Extension.t()],
          jurisdiction: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()],
          status: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :restoreDate])
    |> cast_embed(:_restoreDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:country, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:dateRange, with: &Fhir.Period.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:jurisdiction, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:status, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :restoreDate,
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

defmodule Fhir.ClaimProcedure do
  @moduledoc """
  A provider issued list of professional services and products which have been provided, or are to be provided, to a patient which is sent to an insurer for reimbursement.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:date, :string)
    field(:id, :string)
    field(:sequence, :float)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:_sequence, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:procedureCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:procedureReference, Fhir.Reference)
    embeds_many(:type, Fhir.CodeableConcept)
    embeds_many(:udi, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          date: String.t(),
          id: String.t(),
          sequence: float(),
          _date: Fhir.Element.t(),
          _sequence: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          procedureCodeableConcept: Fhir.CodeableConcept.t(),
          procedureReference: Fhir.Reference.t(),
          type: [Fhir.CodeableConcept.t()],
          udi: [Fhir.Reference.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:date, :id, :sequence])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:procedureCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:procedureReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:udi, with: &Fhir.Reference.changeset/2)
    |> validate_format(
      :date,
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

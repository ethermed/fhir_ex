defmodule Fhir.ImmunizationReaction do
  @moduledoc """
  Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:date, :string)
    field(:id, :string)
    field(:reported, :boolean)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:_reported, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:manifestation, Fhir.CodeableReference)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          date: String.t(),
          id: String.t(),
          reported: boolean(),
          _date: Fhir.Element.t(),
          _reported: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          manifestation: Fhir.CodeableReference.t(),
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:date, :id, :reported])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_reported, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:manifestation, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:reported, [true, false])
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

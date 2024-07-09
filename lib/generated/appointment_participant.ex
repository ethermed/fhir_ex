defmodule Fhir.AppointmentParticipant do
  @moduledoc """
  A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific date/time. This may result in one or more Encounter(s).
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:required, :boolean)
    field(:status, :string)
    embeds_one(:_required, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:actor, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:period, Fhir.Period)
    embeds_many(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          required: boolean(),
          status: String.t(),
          _required: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          actor: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          period: Fhir.Period.t(),
          type: [Fhir.CodeableConcept.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :required, :status])
    |> cast_embed(:_required, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:actor, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:required, [true, false])
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

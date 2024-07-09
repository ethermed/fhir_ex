defmodule Fhir.CareTeamParticipant do
  @moduledoc """
  The Care Team includes all the people and organizations who plan to participate in the coordination and delivery of care.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_one(:coveragePeriod, Fhir.Period)
    embeds_one(:coverageTiming, Fhir.Timing)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:member, Fhir.Reference)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:onBehalfOf, Fhir.Reference)
    embeds_one(:role, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          coveragePeriod: Fhir.Period.t(),
          coverageTiming: Fhir.Timing.t(),
          extension: [Fhir.Extension.t()],
          member: Fhir.Reference.t(),
          modifierExtension: [Fhir.Extension.t()],
          onBehalfOf: Fhir.Reference.t(),
          role: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:coveragePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:coverageTiming, with: &Fhir.Timing.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:member, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:onBehalfOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:role, with: &Fhir.CodeableConcept.changeset/2)
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

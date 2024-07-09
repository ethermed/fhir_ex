defmodule Fhir.ExtendedContactDetail do
  @moduledoc """
  Specifies contact information for a specific purpose over a period of time, might be handled/monitored by a specific named person or organization.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_one(:address, Fhir.Address)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:name, Fhir.HumanName)
    embeds_one(:organization, Fhir.Reference)
    embeds_one(:period, Fhir.Period)
    embeds_one(:purpose, Fhir.CodeableConcept)
    embeds_many(:telecom, Fhir.ContactPoint)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          address: Fhir.Address.t(),
          extension: [Fhir.Extension.t()],
          name: [Fhir.HumanName.t()],
          organization: Fhir.Reference.t(),
          period: Fhir.Period.t(),
          purpose: Fhir.CodeableConcept.t(),
          telecom: [Fhir.ContactPoint.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:address, with: &Fhir.Address.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:name, with: &Fhir.HumanName.changeset/2)
    |> cast_embed(:organization, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> cast_embed(:purpose, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:telecom, with: &Fhir.ContactPoint.changeset/2)
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

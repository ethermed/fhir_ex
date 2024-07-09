defmodule Fhir.DeviceAssociationOperation do
  @moduledoc """
  A record of association or dissociation of a device with a patient.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:operator, Fhir.Reference)
    embeds_one(:period, Fhir.Period)
    embeds_one(:status, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          operator: [Fhir.Reference.t()],
          period: Fhir.Period.t(),
          status: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:operator, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> cast_embed(:status, with: &Fhir.CodeableConcept.changeset/2)
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

defmodule Fhir.ImmunizationProtocolApplied do
  @moduledoc """
  Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:doseNumber, :string)
    field(:id, :string)
    field(:series, :string)
    field(:seriesDoses, :string)
    embeds_one(:_doseNumber, Fhir.Element)
    embeds_one(:_series, Fhir.Element)
    embeds_one(:_seriesDoses, Fhir.Element)
    embeds_one(:authority, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:targetDisease, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          doseNumber: String.t(),
          id: String.t(),
          series: String.t(),
          seriesDoses: String.t(),
          _doseNumber: Fhir.Element.t(),
          _series: Fhir.Element.t(),
          _seriesDoses: Fhir.Element.t(),
          authority: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          targetDisease: [Fhir.CodeableConcept.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:doseNumber, :id, :series, :seriesDoses])
    |> cast_embed(:_doseNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_series, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_seriesDoses, with: &Fhir.Element.changeset/2)
    |> cast_embed(:authority, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:targetDisease, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:doseNumber, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:series, ~r/^^[\s\S]+$$/)
    |> validate_format(:seriesDoses, ~r/^^[\s\S]+$$/)
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

defmodule Fhir.AdministrableProductDefinitionRouteOfAdministration do
  @moduledoc """
  A medicinal product in the final form which is suitable for administering to a patient (after any mixing of multiple components, dissolution etc. has been performed).
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:firstDose, Fhir.Quantity)
    embeds_one(:maxDosePerDay, Fhir.Quantity)
    embeds_one(:maxDosePerTreatmentPeriod, Fhir.Ratio)
    embeds_one(:maxSingleDose, Fhir.Quantity)
    embeds_one(:maxTreatmentPeriod, Fhir.Duration)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:targetSpecies, Fhir.AdministrableProductDefinitionTargetSpecies)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          code: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          firstDose: Fhir.Quantity.t(),
          maxDosePerDay: Fhir.Quantity.t(),
          maxDosePerTreatmentPeriod: Fhir.Ratio.t(),
          maxSingleDose: Fhir.Quantity.t(),
          maxTreatmentPeriod: Fhir.Duration.t(),
          modifierExtension: [Fhir.Extension.t()],
          targetSpecies: [Fhir.AdministrableProductDefinitionTargetSpecies.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:firstDose, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:maxDosePerDay, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:maxDosePerTreatmentPeriod, with: &Fhir.Ratio.changeset/2)
    |> cast_embed(:maxSingleDose, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:maxTreatmentPeriod, with: &Fhir.Duration.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:targetSpecies,
      with: &Fhir.AdministrableProductDefinitionTargetSpecies.changeset/2
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

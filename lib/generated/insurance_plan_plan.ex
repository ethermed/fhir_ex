defmodule Fhir.InsurancePlanPlan do
  @moduledoc """
  Details of a Health Insurance product/plan provided by an organization.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_many(:coverageArea, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:generalCost, Fhir.InsurancePlanGeneralCost)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:network, Fhir.Reference)
    embeds_many(:specificCost, Fhir.InsurancePlanSpecificCost)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          coverageArea: [Fhir.Reference.t()],
          extension: [Fhir.Extension.t()],
          generalCost: [Fhir.InsurancePlanGeneralCost.t()],
          identifier: [Fhir.Identifier.t()],
          modifierExtension: [Fhir.Extension.t()],
          network: [Fhir.Reference.t()],
          specificCost: [Fhir.InsurancePlanSpecificCost.t()],
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:coverageArea, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:generalCost, with: &Fhir.InsurancePlanGeneralCost.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:network, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:specificCost, with: &Fhir.InsurancePlanSpecificCost.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
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

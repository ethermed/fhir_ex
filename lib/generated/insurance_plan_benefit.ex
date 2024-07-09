defmodule Fhir.InsurancePlanBenefit do
  @moduledoc """
  Details of a Health Insurance product/plan provided by an organization.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:requirement, :string)
    embeds_one(:_requirement, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:limit, Fhir.InsurancePlanLimit)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          requirement: String.t(),
          _requirement: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          limit: [Fhir.InsurancePlanLimit.t()],
          modifierExtension: [Fhir.Extension.t()],
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :requirement])
    |> cast_embed(:_requirement, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:limit, with: &Fhir.InsurancePlanLimit.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:requirement, ~r/^^[\s\S]+$$/)
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

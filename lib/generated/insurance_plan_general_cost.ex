defmodule Fhir.InsurancePlanGeneralCost do
  @moduledoc """
  Details of a Health Insurance product/plan provided by an organization.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:comment, :string)
    field(:groupSize, :float)
    field(:id, :string)
    embeds_one(:_comment, Fhir.Element)
    embeds_one(:_groupSize, Fhir.Element)
    embeds_one(:cost, Fhir.Money)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          comment: String.t(),
          groupSize: float(),
          id: String.t(),
          _comment: Fhir.Element.t(),
          _groupSize: Fhir.Element.t(),
          cost: Fhir.Money.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:comment, :groupSize, :id])
    |> cast_embed(:_comment, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_groupSize, with: &Fhir.Element.changeset/2)
    |> cast_embed(:cost, with: &Fhir.Money.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:comment, ~r/^^[\s\S]+$$/)
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

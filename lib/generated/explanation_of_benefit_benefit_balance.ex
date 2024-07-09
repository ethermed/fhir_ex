defmodule Fhir.ExplanationOfBenefitBenefitBalance do
  @moduledoc """
  This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account balance information, for informing the subscriber of the benefits provided.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:excluded, :boolean)
    field(:id, :string)
    field(:name, :string)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_excluded, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_one(:category, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:financial, Fhir.ExplanationOfBenefitFinancial)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:network, Fhir.CodeableConcept)
    embeds_one(:term, Fhir.CodeableConcept)
    embeds_one(:unit, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          excluded: boolean(),
          id: String.t(),
          name: String.t(),
          _description: Fhir.Element.t(),
          _excluded: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          category: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          financial: [Fhir.ExplanationOfBenefitFinancial.t()],
          modifierExtension: [Fhir.Extension.t()],
          network: Fhir.CodeableConcept.t(),
          term: Fhir.CodeableConcept.t(),
          unit: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:description, :excluded, :id, :name])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_excluded, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:financial, with: &Fhir.ExplanationOfBenefitFinancial.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:network, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:term, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:unit, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:excluded, [true, false])
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
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

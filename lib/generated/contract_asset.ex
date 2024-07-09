defmodule Fhir.ContractAsset do
  @moduledoc """
  Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:condition, :string)
    field(:id, :string)
    field(:linkId, :string)
    field(:securityLabelNumber, :string)
    field(:text, :string)
    embeds_one(:_condition, Fhir.Element)
    embeds_many(:_linkId, Fhir.Element)
    embeds_many(:_securityLabelNumber, Fhir.Element)
    embeds_one(:_text, Fhir.Element)
    embeds_many(:answer, Fhir.ContractAnswer)
    embeds_many(:context, Fhir.ContractContext)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:period, Fhir.Period)
    embeds_many(:periodType, Fhir.CodeableConcept)
    embeds_one(:relationship, Fhir.Coding)
    embeds_one(:scope, Fhir.CodeableConcept)
    embeds_many(:subtype, Fhir.CodeableConcept)
    embeds_many(:type, Fhir.CodeableConcept)
    embeds_many(:typeReference, Fhir.Reference)
    embeds_many(:usePeriod, Fhir.Period)
    embeds_many(:valuedItem, Fhir.ContractValuedItem)
  end

  @type t :: %__MODULE__{
          condition: String.t(),
          id: String.t(),
          linkId: String.t(),
          securityLabelNumber: String.t(),
          text: String.t(),
          _condition: Fhir.Element.t(),
          _linkId: [Fhir.Element.t()],
          _securityLabelNumber: [Fhir.Element.t()],
          _text: Fhir.Element.t(),
          answer: [Fhir.ContractAnswer.t()],
          context: [Fhir.ContractContext.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          period: [Fhir.Period.t()],
          periodType: [Fhir.CodeableConcept.t()],
          relationship: Fhir.Coding.t(),
          scope: Fhir.CodeableConcept.t(),
          subtype: [Fhir.CodeableConcept.t()],
          type: [Fhir.CodeableConcept.t()],
          typeReference: [Fhir.Reference.t()],
          usePeriod: [Fhir.Period.t()],
          valuedItem: [Fhir.ContractValuedItem.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:condition, :id, :linkId, :securityLabelNumber, :text])
    |> cast_embed(:_condition, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_linkId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_securityLabelNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_text, with: &Fhir.Element.changeset/2)
    |> cast_embed(:answer, with: &Fhir.ContractAnswer.changeset/2)
    |> cast_embed(:context, with: &Fhir.ContractContext.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:period, with: &Fhir.Period.changeset/2)
    |> cast_embed(:periodType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:relationship, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:scope, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:subtype, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:typeReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:usePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:valuedItem, with: &Fhir.ContractValuedItem.changeset/2)
    |> validate_format(:condition, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:text, ~r/^^[\s\S]+$$/)
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

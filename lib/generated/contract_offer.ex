defmodule Fhir.ContractOffer do
  @moduledoc """
  Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:linkId, :string)
    field(:securityLabelNumber, :string)
    field(:text, :string)
    embeds_many(:_linkId, Fhir.Element)
    embeds_many(:_securityLabelNumber, Fhir.Element)
    embeds_one(:_text, Fhir.Element)
    embeds_many(:answer, Fhir.ContractAnswer)
    embeds_one(:decision, Fhir.CodeableConcept)
    embeds_many(:decisionMode, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:party, Fhir.ContractParty)
    embeds_one(:topic, Fhir.Reference)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          linkId: String.t(),
          securityLabelNumber: String.t(),
          text: String.t(),
          _linkId: [Fhir.Element.t()],
          _securityLabelNumber: [Fhir.Element.t()],
          _text: Fhir.Element.t(),
          answer: [Fhir.ContractAnswer.t()],
          decision: Fhir.CodeableConcept.t(),
          decisionMode: [Fhir.CodeableConcept.t()],
          extension: [Fhir.Extension.t()],
          identifier: [Fhir.Identifier.t()],
          modifierExtension: [Fhir.Extension.t()],
          party: [Fhir.ContractParty.t()],
          topic: Fhir.Reference.t(),
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :linkId, :securityLabelNumber, :text])
    |> cast_embed(:_linkId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_securityLabelNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_text, with: &Fhir.Element.changeset/2)
    |> cast_embed(:answer, with: &Fhir.ContractAnswer.changeset/2)
    |> cast_embed(:decision, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:decisionMode, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:party, with: &Fhir.ContractParty.changeset/2)
    |> cast_embed(:topic, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
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

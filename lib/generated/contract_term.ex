defmodule Fhir.ContractTerm do
  @moduledoc """
  Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:issued, :string)
    field(:text, :string)
    embeds_one(:_issued, Fhir.Element)
    embeds_one(:_text, Fhir.Element)
    embeds_many(:action, Fhir.ContractAction)
    embeds_one(:applies, Fhir.Period)
    embeds_many(:asset, Fhir.ContractAsset)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:group, Fhir.ContractTerm)
    embeds_one(:identifier, Fhir.Identifier)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:offer, Fhir.ContractOffer)
    embeds_many(:securityLabel, Fhir.ContractSecurityLabel)
    embeds_one(:subType, Fhir.CodeableConcept)
    embeds_one(:topicCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:topicReference, Fhir.Reference)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          issued: String.t(),
          text: String.t(),
          _issued: Fhir.Element.t(),
          _text: Fhir.Element.t(),
          action: [Fhir.ContractAction.t()],
          applies: Fhir.Period.t(),
          asset: [Fhir.ContractAsset.t()],
          extension: [Fhir.Extension.t()],
          group: [Fhir.ContractTerm.t()],
          identifier: Fhir.Identifier.t(),
          modifierExtension: [Fhir.Extension.t()],
          offer: Fhir.ContractOffer.t(),
          securityLabel: [Fhir.ContractSecurityLabel.t()],
          subType: Fhir.CodeableConcept.t(),
          topicCodeableConcept: Fhir.CodeableConcept.t(),
          topicReference: Fhir.Reference.t(),
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :issued, :text])
    |> cast_embed(:_issued, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_text, with: &Fhir.Element.changeset/2)
    |> cast_embed(:action, with: &Fhir.ContractAction.changeset/2)
    |> cast_embed(:applies, with: &Fhir.Period.changeset/2)
    |> cast_embed(:asset, with: &Fhir.ContractAsset.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:group, with: &Fhir.ContractTerm.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:offer, with: &Fhir.ContractOffer.changeset/2)
    |> cast_embed(:securityLabel, with: &Fhir.ContractSecurityLabel.changeset/2)
    |> cast_embed(:subType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:topicCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:topicReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :issued,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
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

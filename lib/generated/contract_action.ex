defmodule Fhir.ContractAction do
  @moduledoc """
  Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:contextLinkId, :string)
    field(:doNotPerform, :boolean)
    field(:id, :string)
    field(:linkId, :string)
    field(:occurrenceDateTime, :string)
    field(:performerLinkId, :string)
    field(:reasonLinkId, :string)
    field(:requesterLinkId, :string)
    field(:securityLabelNumber, :string)
    embeds_many(:_contextLinkId, Fhir.Element)
    embeds_one(:_doNotPerform, Fhir.Element)
    embeds_many(:_linkId, Fhir.Element)
    embeds_one(:_occurrenceDateTime, Fhir.Element)
    embeds_many(:_performerLinkId, Fhir.Element)
    embeds_many(:_reasonLinkId, Fhir.Element)
    embeds_many(:_requesterLinkId, Fhir.Element)
    embeds_many(:_securityLabelNumber, Fhir.Element)
    embeds_one(:context, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:intent, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:note, Fhir.Annotation)
    embeds_one(:occurrencePeriod, Fhir.Period)
    embeds_one(:occurrenceTiming, Fhir.Timing)
    embeds_one(:performer, Fhir.Reference)
    embeds_one(:performerRole, Fhir.CodeableConcept)
    embeds_many(:performerType, Fhir.CodeableConcept)
    embeds_many(:reason, Fhir.CodeableReference)
    embeds_many(:requester, Fhir.Reference)
    embeds_one(:status, Fhir.CodeableConcept)
    embeds_many(:subject, Fhir.ContractSubject)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          contextLinkId: String.t(),
          doNotPerform: boolean(),
          id: String.t(),
          linkId: String.t(),
          occurrenceDateTime: String.t(),
          performerLinkId: String.t(),
          reasonLinkId: String.t(),
          requesterLinkId: String.t(),
          securityLabelNumber: String.t(),
          _contextLinkId: [Fhir.Element.t()],
          _doNotPerform: Fhir.Element.t(),
          _linkId: [Fhir.Element.t()],
          _occurrenceDateTime: Fhir.Element.t(),
          _performerLinkId: [Fhir.Element.t()],
          _reasonLinkId: [Fhir.Element.t()],
          _requesterLinkId: [Fhir.Element.t()],
          _securityLabelNumber: [Fhir.Element.t()],
          context: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          intent: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()],
          note: [Fhir.Annotation.t()],
          occurrencePeriod: Fhir.Period.t(),
          occurrenceTiming: Fhir.Timing.t(),
          performer: Fhir.Reference.t(),
          performerRole: Fhir.CodeableConcept.t(),
          performerType: [Fhir.CodeableConcept.t()],
          reason: [Fhir.CodeableReference.t()],
          requester: [Fhir.Reference.t()],
          status: Fhir.CodeableConcept.t(),
          subject: [Fhir.ContractSubject.t()],
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :contextLinkId,
      :doNotPerform,
      :id,
      :linkId,
      :occurrenceDateTime,
      :performerLinkId,
      :reasonLinkId,
      :requesterLinkId,
      :securityLabelNumber
    ])
    |> cast_embed(:_contextLinkId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_doNotPerform, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_linkId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_occurrenceDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_performerLinkId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_reasonLinkId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_requesterLinkId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_securityLabelNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:context, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:intent, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:note, with: &Fhir.Annotation.changeset/2)
    |> cast_embed(:occurrencePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:occurrenceTiming, with: &Fhir.Timing.changeset/2)
    |> cast_embed(:performer, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:performerRole, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:performerType, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:requester, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:status, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:subject, with: &Fhir.ContractSubject.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_inclusion(:doNotPerform, [true, false])
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

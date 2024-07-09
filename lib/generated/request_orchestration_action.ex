defmodule Fhir.RequestOrchestrationAction do
  @moduledoc """
  A set of related requests that can be used to capture intended activities that have inter-dependencies such as "give this medication after that one".
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:selectionBehavior, :string)
    field(:definitionCanonical, :string)
    field(:requiredBehavior, :string)
    field(:textEquivalent, :string)
    field(:description, :string)
    field(:cardinalityBehavior, :string)
    field(:linkId, :string)
    field(:precheckBehavior, :string)
    field(:groupingBehavior, :string)
    field(:definitionUri, :string)
    field(:transform, :string)
    field(:priority, :string)
    field(:prefix, :string)
    field(:timingDateTime, :string)
    field(:id, :string)
    field(:title, :string)
    embeds_one(:_selectionBehavior, Fhir.Element)
    embeds_one(:timingAge, Fhir.Age)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:timingPeriod, Fhir.Period)
    embeds_many(:participant, Fhir.RequestOrchestrationParticipant)
    embeds_one(:_title, Fhir.Element)
    embeds_many(:relatedAction, Fhir.RequestOrchestrationRelatedAction)
    embeds_one(:_requiredBehavior, Fhir.Element)
    embeds_one(:timingDuration, Fhir.Duration)
    embeds_many(:goal, Fhir.Reference)
    embeds_many(:input, Fhir.RequestOrchestrationInput)
    embeds_one(:timingTiming, Fhir.Timing)
    embeds_one(:_priority, Fhir.Element)
    embeds_one(:_definitionUri, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_many(:condition, Fhir.RequestOrchestrationCondition)
    embeds_one(:location, Fhir.CodeableReference)
    embeds_many(:code, Fhir.CodeableConcept)
    embeds_one(:_prefix, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:_textEquivalent, Fhir.Element)
    embeds_many(:action, Fhir.RequestOrchestrationAction)
    embeds_one(:_linkId, Fhir.Element)
    embeds_many(:dynamicValue, Fhir.RequestOrchestrationDynamicValue)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_one(:_precheckBehavior, Fhir.Element)
    embeds_many(:documentation, Fhir.RelatedArtifact)
    embeds_one(:_definitionCanonical, Fhir.Element)
    embeds_one(:_cardinalityBehavior, Fhir.Element)
    embeds_one(:_timingDateTime, Fhir.Element)
    embeds_one(:_groupingBehavior, Fhir.Element)
    embeds_many(:output, Fhir.RequestOrchestrationOutput)
    embeds_one(:timingRange, Fhir.Range)
    embeds_one(:resource, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          selectionBehavior: String.t(),
          definitionCanonical: String.t(),
          requiredBehavior: String.t(),
          textEquivalent: String.t(),
          description: String.t(),
          cardinalityBehavior: String.t(),
          linkId: String.t(),
          precheckBehavior: String.t(),
          groupingBehavior: String.t(),
          definitionUri: String.t(),
          transform: String.t(),
          priority: String.t(),
          prefix: String.t(),
          timingDateTime: String.t(),
          id: String.t(),
          title: String.t(),
          _selectionBehavior: Fhir.Element.t(),
          timingAge: Fhir.Age.t(),
          extension: [Fhir.Extension.t()],
          timingPeriod: Fhir.Period.t(),
          participant: [Fhir.RequestOrchestrationParticipant.t()],
          _title: Fhir.Element.t(),
          relatedAction: [Fhir.RequestOrchestrationRelatedAction.t()],
          _requiredBehavior: Fhir.Element.t(),
          timingDuration: Fhir.Duration.t(),
          goal: [Fhir.Reference.t()],
          input: [Fhir.RequestOrchestrationInput.t()],
          timingTiming: Fhir.Timing.t(),
          _priority: Fhir.Element.t(),
          _definitionUri: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          condition: [Fhir.RequestOrchestrationCondition.t()],
          location: Fhir.CodeableReference.t(),
          code: [Fhir.CodeableConcept.t()],
          _prefix: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          _textEquivalent: Fhir.Element.t(),
          action: [Fhir.RequestOrchestrationAction.t()],
          _linkId: Fhir.Element.t(),
          dynamicValue: [Fhir.RequestOrchestrationDynamicValue.t()],
          type: Fhir.CodeableConcept.t(),
          _precheckBehavior: Fhir.Element.t(),
          documentation: [Fhir.RelatedArtifact.t()],
          _definitionCanonical: Fhir.Element.t(),
          _cardinalityBehavior: Fhir.Element.t(),
          _timingDateTime: Fhir.Element.t(),
          _groupingBehavior: Fhir.Element.t(),
          output: [Fhir.RequestOrchestrationOutput.t()],
          timingRange: Fhir.Range.t(),
          resource: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :selectionBehavior,
      :definitionCanonical,
      :requiredBehavior,
      :textEquivalent,
      :description,
      :cardinalityBehavior,
      :linkId,
      :precheckBehavior,
      :groupingBehavior,
      :definitionUri,
      :transform,
      :priority,
      :prefix,
      :timingDateTime,
      :id,
      :title
    ])
    |> cast_embed(:_selectionBehavior, with: &Fhir.Element.changeset/2)
    |> cast_embed(:timingAge, with: &Fhir.Age.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:timingPeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:participant, with: &Fhir.RequestOrchestrationParticipant.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:relatedAction, with: &Fhir.RequestOrchestrationRelatedAction.changeset/2)
    |> cast_embed(:_requiredBehavior, with: &Fhir.Element.changeset/2)
    |> cast_embed(:timingDuration, with: &Fhir.Duration.changeset/2)
    |> cast_embed(:goal, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:input, with: &Fhir.RequestOrchestrationInput.changeset/2)
    |> cast_embed(:timingTiming, with: &Fhir.Timing.changeset/2)
    |> cast_embed(:_priority, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_definitionUri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:condition, with: &Fhir.RequestOrchestrationCondition.changeset/2)
    |> cast_embed(:location, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_prefix, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_textEquivalent, with: &Fhir.Element.changeset/2)
    |> cast_embed(:action, with: &Fhir.RequestOrchestrationAction.changeset/2)
    |> cast_embed(:_linkId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:dynamicValue, with: &Fhir.RequestOrchestrationDynamicValue.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_precheckBehavior, with: &Fhir.Element.changeset/2)
    |> cast_embed(:documentation, with: &Fhir.RelatedArtifact.changeset/2)
    |> cast_embed(:_definitionCanonical, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_cardinalityBehavior, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_timingDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_groupingBehavior, with: &Fhir.Element.changeset/2)
    |> cast_embed(:output, with: &Fhir.RequestOrchestrationOutput.changeset/2)
    |> cast_embed(:timingRange, with: &Fhir.Range.changeset/2)
    |> cast_embed(:resource, with: &Fhir.Reference.changeset/2)
    |> validate_format(:selectionBehavior, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:requiredBehavior, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:textEquivalent, ~r/^^[\s\S]+$$/)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:cardinalityBehavior, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:linkId, ~r/^^[\s\S]+$$/)
    |> validate_format(:precheckBehavior, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:groupingBehavior, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:transform, ~r/^\S*$/)
    |> validate_format(:priority, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:prefix, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:title, ~r/^^[\s\S]+$$/)
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

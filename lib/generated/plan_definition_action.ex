defmodule Fhir.PlanDefinitionAction do
  @moduledoc """
  This resource allows for the definition of various types of plans as a sharable, consumable, and executable artifact. The resource is general enough to support the description of a broad range of clinical and non-clinical artifacts such as clinical decision support rules, order sets, protocols, and drug quality specifications.
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
    field(:subjectCanonical, :string)
    field(:precheckBehavior, :string)
    field(:goalId, :string)
    field(:groupingBehavior, :string)
    field(:definitionUri, :string)
    field(:transform, :string)
    field(:priority, :string)
    field(:prefix, :string)
    field(:id, :string)
    field(:title, :string)
    embeds_one(:_selectionBehavior, Fhir.Element)
    embeds_many(:_goalId, Fhir.Element)
    embeds_one(:timingAge, Fhir.Age)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:participant, Fhir.PlanDefinitionParticipant)
    embeds_many(:trigger, Fhir.TriggerDefinition)
    embeds_one(:_title, Fhir.Element)
    embeds_many(:relatedAction, Fhir.PlanDefinitionRelatedAction)
    embeds_many(:reason, Fhir.CodeableConcept)
    embeds_one(:_requiredBehavior, Fhir.Element)
    embeds_one(:timingDuration, Fhir.Duration)
    embeds_one(:subjectCodeableConcept, Fhir.CodeableConcept)
    embeds_many(:input, Fhir.PlanDefinitionInput)
    embeds_one(:timingTiming, Fhir.Timing)
    embeds_one(:_priority, Fhir.Element)
    embeds_one(:_definitionUri, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_many(:condition, Fhir.PlanDefinitionCondition)
    embeds_one(:location, Fhir.CodeableReference)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_one(:_prefix, Fhir.Element)
    embeds_one(:_subjectCanonical, Fhir.Element)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:_textEquivalent, Fhir.Element)
    embeds_many(:action, Fhir.PlanDefinitionAction)
    embeds_one(:_linkId, Fhir.Element)
    embeds_many(:dynamicValue, Fhir.PlanDefinitionDynamicValue)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_one(:_precheckBehavior, Fhir.Element)
    embeds_many(:documentation, Fhir.RelatedArtifact)
    embeds_one(:subjectReference, Fhir.Reference)
    embeds_one(:_definitionCanonical, Fhir.Element)
    embeds_one(:_cardinalityBehavior, Fhir.Element)
    embeds_one(:_groupingBehavior, Fhir.Element)
    embeds_many(:output, Fhir.PlanDefinitionOutput)
    embeds_one(:timingRange, Fhir.Range)
  end

  @type t :: %__MODULE__{
          selectionBehavior: String.t(),
          definitionCanonical: String.t(),
          requiredBehavior: String.t(),
          textEquivalent: String.t(),
          description: String.t(),
          cardinalityBehavior: String.t(),
          linkId: String.t(),
          subjectCanonical: String.t(),
          precheckBehavior: String.t(),
          goalId: String.t(),
          groupingBehavior: String.t(),
          definitionUri: String.t(),
          transform: String.t(),
          priority: String.t(),
          prefix: String.t(),
          id: String.t(),
          title: String.t(),
          _selectionBehavior: Fhir.Element.t(),
          _goalId: [Fhir.Element.t()],
          timingAge: Fhir.Age.t(),
          extension: [Fhir.Extension.t()],
          participant: [Fhir.PlanDefinitionParticipant.t()],
          trigger: [Fhir.TriggerDefinition.t()],
          _title: Fhir.Element.t(),
          relatedAction: [Fhir.PlanDefinitionRelatedAction.t()],
          reason: [Fhir.CodeableConcept.t()],
          _requiredBehavior: Fhir.Element.t(),
          timingDuration: Fhir.Duration.t(),
          subjectCodeableConcept: Fhir.CodeableConcept.t(),
          input: [Fhir.PlanDefinitionInput.t()],
          timingTiming: Fhir.Timing.t(),
          _priority: Fhir.Element.t(),
          _definitionUri: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          condition: [Fhir.PlanDefinitionCondition.t()],
          location: Fhir.CodeableReference.t(),
          code: Fhir.CodeableConcept.t(),
          _prefix: Fhir.Element.t(),
          _subjectCanonical: Fhir.Element.t(),
          modifierExtension: [Fhir.Extension.t()],
          _textEquivalent: Fhir.Element.t(),
          action: [Fhir.PlanDefinitionAction.t()],
          _linkId: Fhir.Element.t(),
          dynamicValue: [Fhir.PlanDefinitionDynamicValue.t()],
          type: Fhir.CodeableConcept.t(),
          _precheckBehavior: Fhir.Element.t(),
          documentation: [Fhir.RelatedArtifact.t()],
          subjectReference: Fhir.Reference.t(),
          _definitionCanonical: Fhir.Element.t(),
          _cardinalityBehavior: Fhir.Element.t(),
          _groupingBehavior: Fhir.Element.t(),
          output: [Fhir.PlanDefinitionOutput.t()],
          timingRange: Fhir.Range.t()
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
      :subjectCanonical,
      :precheckBehavior,
      :goalId,
      :groupingBehavior,
      :definitionUri,
      :transform,
      :priority,
      :prefix,
      :id,
      :title
    ])
    |> cast_embed(:_selectionBehavior, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_goalId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:timingAge, with: &Fhir.Age.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:participant, with: &Fhir.PlanDefinitionParticipant.changeset/2)
    |> cast_embed(:trigger, with: &Fhir.TriggerDefinition.changeset/2)
    |> cast_embed(:_title, with: &Fhir.Element.changeset/2)
    |> cast_embed(:relatedAction, with: &Fhir.PlanDefinitionRelatedAction.changeset/2)
    |> cast_embed(:reason, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_requiredBehavior, with: &Fhir.Element.changeset/2)
    |> cast_embed(:timingDuration, with: &Fhir.Duration.changeset/2)
    |> cast_embed(:subjectCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:input, with: &Fhir.PlanDefinitionInput.changeset/2)
    |> cast_embed(:timingTiming, with: &Fhir.Timing.changeset/2)
    |> cast_embed(:_priority, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_definitionUri, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:condition, with: &Fhir.PlanDefinitionCondition.changeset/2)
    |> cast_embed(:location, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_prefix, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_subjectCanonical, with: &Fhir.Element.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:_textEquivalent, with: &Fhir.Element.changeset/2)
    |> cast_embed(:action, with: &Fhir.PlanDefinitionAction.changeset/2)
    |> cast_embed(:_linkId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:dynamicValue, with: &Fhir.PlanDefinitionDynamicValue.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:_precheckBehavior, with: &Fhir.Element.changeset/2)
    |> cast_embed(:documentation, with: &Fhir.RelatedArtifact.changeset/2)
    |> cast_embed(:subjectReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:_definitionCanonical, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_cardinalityBehavior, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_groupingBehavior, with: &Fhir.Element.changeset/2)
    |> cast_embed(:output, with: &Fhir.PlanDefinitionOutput.changeset/2)
    |> cast_embed(:timingRange, with: &Fhir.Range.changeset/2)
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

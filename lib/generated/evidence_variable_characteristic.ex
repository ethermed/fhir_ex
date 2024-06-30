defmodule Fhir.EvidenceVariableCharacteristic do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_definitionId, Fhir.Element)
    field(:_description, Fhir.Element)
    field(:_exclude, Fhir.Element)
    field(:_linkId, Fhir.Element)
    field(:definitionByCombination, Fhir.EvidenceVariableDefinitionByCombination)
    field(:definitionByTypeAndValue, Fhir.EvidenceVariableDefinitionByTypeAndValue)
    field(:definitionCanonical, :string)
    field(:definitionCodeableConcept, Fhir.CodeableConcept)
    field(:definitionExpression, Fhir.Expression)
    field(:definitionId, :string)
    field(:definitionReference, Fhir.Reference)
    field(:description, :string)
    field(:durationQuantity, Fhir.Quantity)
    field(:durationRange, Fhir.Range)
    field(:exclude, :boolean)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:instancesQuantity, Fhir.Quantity)
    field(:instancesRange, Fhir.Range)
    field(:linkId, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:note, [Fhir.Annotation], default: [])
    field(:timeFromEvent, [Fhir.EvidenceVariableTimeFromEvent], default: [])
  end
end

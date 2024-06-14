defmodule Fhir.v6().EvidenceVariableCharacteristic do
  use TypedStruct

  typedstruct do
    field(:_definitionId, Fhir.v6().Element)
    field(:_description, Fhir.v6().Element)
    field(:_exclude, Fhir.v6().Element)
    field(:_linkId, Fhir.v6().Element)
    field(:definitionByCombination, Fhir.v6().EvidenceVariableDefinitionByCombination)
    field(:definitionByTypeAndValue, Fhir.v6().EvidenceVariableDefinitionByTypeAndValue)
    field(:definitionCanonical, :string)
    field(:definitionCodeableConcept, Fhir.v6().CodeableConcept)
    field(:definitionExpression, Fhir.v6().Expression)
    field(:definitionId, :string)
    field(:definitionReference, Fhir.v6().Reference)
    field(:description, :string)
    field(:durationQuantity, Fhir.v6().Quantity)
    field(:durationRange, Fhir.v6().Range)
    field(:exclude, :boolean)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:instancesQuantity, Fhir.v6().Quantity)
    field(:instancesRange, Fhir.v6().Range)
    field(:linkId, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:timeFromEvent, [Fhir.v6().EvidenceVariableTimeFromEvent], default: [])
  end
end

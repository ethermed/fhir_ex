defmodule Fhir.EvidenceVariableDefinitionByTypeAndValue do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_valueBoolean, Fhir.Element)
    field(:_valueId, Fhir.Element)
    field(:device, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:method, [Fhir.CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:offset, Fhir.CodeableConcept)
    field(:type, Fhir.CodeableConcept)
    field(:valueBoolean, :boolean)
    field(:valueCodeableConcept, Fhir.CodeableConcept)
    field(:valueId, :string)
    field(:valueQuantity, Fhir.Quantity)
    field(:valueRange, Fhir.Range)
    field(:valueReference, Fhir.Reference)
  end
end

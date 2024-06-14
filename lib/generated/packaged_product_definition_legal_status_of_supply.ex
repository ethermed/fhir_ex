defmodule Fhir.PackagedProductDefinitionLegalStatusOfSupply do
  use TypedStruct

  typedstruct do
    field(:code, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:jurisdiction, Fhir.CodeableConcept)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end

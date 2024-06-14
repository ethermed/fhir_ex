defmodule Fhir.v6().PackagedProductDefinitionLegalStatusOfSupply do
  use TypedStruct

  typedstruct do
    field(:code, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:jurisdiction, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end

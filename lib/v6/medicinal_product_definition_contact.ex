defmodule Fhir.v6().MedicinalProductDefinitionContact do
  use TypedStruct

  typedstruct do
    field(:contact, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end
